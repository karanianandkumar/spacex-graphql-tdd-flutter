import 'package:equatable/equatable.dart';
import 'package:leanix_task/features/launchpads/domain/entities/vehical.dart';

abstract class VehicalsState extends Equatable {
  @override
  List<Object> get props => [];
}

class VehicalsLoading extends VehicalsState {}

class VehicalsLoadingFailed extends VehicalsState {}

class NoVehicals extends VehicalsState {}

class VehicalsSuccess extends VehicalsState {
  final List<Vehical> vehicals;

  VehicalsSuccess({this.vehicals});
  @override
  List<Object> get props => [vehicals];
}
