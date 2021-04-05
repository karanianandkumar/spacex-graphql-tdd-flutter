part of 'vehicals_bloc.dart';

@freezed
abstract class VehicalsState with _$VehicalsState {
  const factory VehicalsState.initial() = _Initial;
}
