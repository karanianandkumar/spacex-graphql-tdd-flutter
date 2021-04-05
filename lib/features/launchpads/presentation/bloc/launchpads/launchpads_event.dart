import 'package:equatable/equatable.dart';

abstract class LaunchpadsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LaunchPadsFetched extends LaunchpadsEvent {}
