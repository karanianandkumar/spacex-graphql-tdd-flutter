import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:leanix_task/core/error/failures.dart';
import 'package:leanix_task/features/launchpads/domain/entities/vehical.dart';
import 'package:leanix_task/features/launchpads/domain/usecases/get_vehicals_usecase.dart';

import './vehicals_event.dart';
import './vehicals_state.dart';

@Injectable()
class VehicalsBloc extends Bloc<VehicalsEvent, VehicalsState> {
  final GetVehicalsUseCase _useCase;
  VehicalsBloc(this._useCase) : super(VehicalsLoading());

  fetchVehicals(String launchpadID) {
    add(VehicalsFetch(launchPadID: launchpadID));
  }

  @override
  Stream<VehicalsState> mapEventToState(
    VehicalsEvent event,
  ) async* {
    if (event is VehicalsFetch) {
      final Either<Failure, List<Vehical>> either =
          await _useCase(VehicalParams(event.launchPadID));

      if (either.isRight()) {
        List<Vehical> vehicals = either.getOrElse(null);
        int len = vehicals.length;
        if (len > 0) {
          yield VehicalsSuccess(vehicals: vehicals);
        } else {
          yield NoVehicals();
        }
      } else {
        yield VehicalsLoadingFailed();
      }
    }
  }
}
