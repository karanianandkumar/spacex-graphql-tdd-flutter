part of 'vehicals_bloc.dart';

@freezed
abstract class VehicalsEvent with _$VehicalsEvent {
  const factory VehicalsEvent.loading() = _Loading;
}
