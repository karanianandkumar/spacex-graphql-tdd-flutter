// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehical_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicalModel _$_$_VehicalModelFromJson(Map<String, dynamic> json) {
  return _$_VehicalModel(
    id: json['id'] as String,
    country: json['country'] as String,
    name: json['name'] as String,
    successRatePercent: json['success_rate_pct'] as int,
  );
}

Map<String, dynamic> _$_$_VehicalModelToJson(_$_VehicalModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country': instance.country,
      'name': instance.name,
      'success_rate_pct': instance.successRatePercent,
    };
