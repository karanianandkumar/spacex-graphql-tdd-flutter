import 'package:freezed_annotation/freezed_annotation.dart';

part 'launchpad_status.freezed.dart';

@freezed
abstract class LaunchPadStatus with _$LaunchPadStatus {
  const factory LaunchPadStatus.active() = Active;
  const factory LaunchPadStatus.underConstruction() = UnderConstruction;
  const factory LaunchPadStatus.retired() = Retired;
  const factory LaunchPadStatus.unknown() = Unknown;
}
