import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/types/launchpad_status.dart';
import '../../../../core/types/location.dart';
import '../../../../core/util/mapper.dart';
import '../../domain/entities/launchpad.dart';

part 'launchpad_model.freezed.dart';
part 'launchpad_model.g.dart';

@freezed
abstract class LaunchPadModel with _$LaunchPadModel {
  const factory LaunchPadModel({
    @required String id,
    @required @JsonKey(name: 'attempted_launches') int attemptedLaunches,
    @required String details,
    @required String name,
    @required
    @JsonKey(fromJson: Mapper.statusInType, toJson: Mapper.statusInString, name: 'status')
        LaunchPadStatus status,
    @required @JsonKey(name: 'successful_launches') int successfulLaunches,
    @required Location location,
  }) = _LaunchPadModel;

  factory LaunchPadModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchPadModelFromJson(json);

  factory LaunchPadModel.fromEntity(LaunchPad entity) => LaunchPadModel(
      id: entity.id,
      name: entity.name,
      attemptedLaunches: entity.attemptedLaunches,
      details: entity.details,
      status: entity.status,
      successfulLaunches: entity.successfulLaunches,
      location: entity.location);
}

extension LaunchPadModelX on LaunchPadModel {
  LaunchPad toEntity() => LaunchPad(
        id: id,
        name: name,
        attemptedLaunches: attemptedLaunches,
        details: details,
        status: status,
        successfulLaunches: successfulLaunches,
        location: location,
      );
}
