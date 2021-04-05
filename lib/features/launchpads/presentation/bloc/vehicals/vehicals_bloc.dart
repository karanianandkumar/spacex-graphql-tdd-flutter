import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicals_bloc.freezed.dart';
part 'vehicals_event.dart';
part 'vehicals_state.dart';

class VehicalsBloc extends Bloc<VehicalsEvent, VehicalsState> {
  VehicalsBloc() : super(_Initial());

  @override
  Stream<VehicalsState> mapEventToState(
    VehicalsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
