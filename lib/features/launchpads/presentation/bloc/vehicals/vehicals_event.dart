import 'package:equatable/equatable.dart';

abstract class VehicalsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class VehicalsFetch extends VehicalsEvent {
  final String launchPadID;

  VehicalsFetch({this.launchPadID});
  @override
  List<Object> get props => [launchPadID];
}
