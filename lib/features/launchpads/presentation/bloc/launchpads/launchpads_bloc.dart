import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:leanix_task/core/util/gql_query.dart';

import '../../../domain/entities/launchpad.dart';
import '../../../domain/usecases/get_launchpads_usecase.dart';
import './launchpads_state.dart';
import './launchpads_event.dart';

@injectable
class LaunchpadsBloc extends Bloc<LaunchpadsEvent, LaunchpadsState> {
  LaunchpadsBloc(
    this._getLaunchPadsUseCase,
  ) : super(LaunchpadsLoading());

  final GetLaunchPadsUseCase _getLaunchPadsUseCase;

  void fetchLaunchPads() {
    add(LaunchPadsFetched());
  }

  @override
  Stream<LaunchpadsState> mapEventToState(
    LaunchpadsEvent event,
  ) async* {
    final currentState = state;
    if (event is LaunchpadsEvent && !_hasReachedMax(currentState)) {
      if (currentState is LaunchpadsLoading) {
        final either = await _getLaunchPadsUseCase(LaunchPadParams(0));
        if (either.isRight()) {
          List<LaunchPad> launchPads = either.getOrElse(null);
          int len = launchPads.length;
          if (len > 0) {
            yield LauchpadsSuccess(
                launchPads: launchPads,
                hasReachedToEnd:
                    len < GqlQuery.LAUNCHPADS_LIMIT ? true : false);
          } else {
            yield NoLaunchpads();
          }
        } else {
          yield LaunchpadsFailure();
        }
      }
      if (currentState is LauchpadsSuccess) {
        final either = await _getLaunchPadsUseCase(
            LaunchPadParams(currentState.launchPads.length));
        if (either.isRight()) {
          List<LaunchPad> launchPads = either.getOrElse(null);
          if (launchPads.length > 0) {
            yield LauchpadsSuccess(
                launchPads: currentState.launchPads + launchPads,
                hasReachedToEnd: false);
          } else {
            yield currentState.copyWith(hasReachedToEnd: true);
          }
        }
      }
    }
  }

  bool _hasReachedMax(LaunchpadsState state) =>
      state is LauchpadsSuccess && state.hasReachedToEnd;
}
