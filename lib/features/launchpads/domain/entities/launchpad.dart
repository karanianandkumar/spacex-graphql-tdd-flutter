import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/types/launchpad_status.dart';
import '../../../../core/types/location.dart';

part 'launchpad.freezed.dart';

@freezed
abstract class LaunchPad with _$LaunchPad {
  const factory LaunchPad({
    @required String id,
    @required int attemptedLaunches,
    @required String details,
    @required String name,
    @required LaunchPadStatus status,
    @required int successfulLaunches,
    @required Location location,
  }) = _LaunchPad;
}
