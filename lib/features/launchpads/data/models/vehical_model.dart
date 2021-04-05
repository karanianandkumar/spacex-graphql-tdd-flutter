import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/vehical.dart';

part 'vehical_model.freezed.dart';
part 'vehical_model.g.dart';

@freezed
abstract class VehicalModel with _$VehicalModel {
  const factory VehicalModel(
      {@required
          String id,
      @required
          String country,
      @required
          String name,
      @required
      @JsonKey(name: 'success_rate_pct')
          int successRatePercent}) = _VehicalModel;
  factory VehicalModel.fromJson(Map<String, dynamic> json) =>
      _$VehicalModelFromJson(json);

  factory VehicalModel.fromEntity(Vehical entity) => VehicalModel(
      id: entity.id,
      name: entity.name,
      country: entity.country,
      successRatePercent: entity.successRatePercent);
}

extension VehicalModelX on VehicalModel {
  Vehical toEntity() => Vehical(
        id: id,
        name: name,
        country: country,
        successRatePercent: successRatePercent,
      );
}
