import 'package:equatable/equatable.dart';
import 'package:leanix_task/features/launchpads/domain/entities/launchpad.dart';

abstract class LaunchpadsState extends Equatable {
  const LaunchpadsState();

  @override
  List<Object> get props => [];
}

class LaunchpadsLoading extends LaunchpadsState {}

class LaunchpadsFailure extends LaunchpadsState {}

class NoLaunchpads extends LaunchpadsState {}

class LauchpadsSuccess extends LaunchpadsState {
  final List<LaunchPad> launchPads;
  final bool hasReachedToEnd;

  const LauchpadsSuccess({
    this.launchPads,
    this.hasReachedToEnd,
  });

  LauchpadsSuccess copyWith({
    List<LaunchPad> posts,
    bool hasReachedToEnd,
  }) {
    return LauchpadsSuccess(
      launchPads: launchPads ?? this.launchPads,
      hasReachedToEnd: hasReachedToEnd ?? this.hasReachedToEnd,
    );
  }

  @override
  List<Object> get props => [launchPads, hasReachedToEnd];

  @override
  String toString() =>
      'LauchpadsSuccess { lauchPads: ${launchPads.length}, hasReachedToEnd: $hasReachedToEnd }';
}
