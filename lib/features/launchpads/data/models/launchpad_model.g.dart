// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launchpad_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LaunchPadModel _$_$_LaunchPadModelFromJson(Map<String, dynamic> json) {
  return _$_LaunchPadModel(
    id: json['id'] as String,
    attemptedLaunches: json['attempted_launches'] as int,
    details: json['details'] as String,
    name: json['name'] as String,
    status: Mapper.statusInType(json['status'] as String),
    successfulLaunches: json['successful_launches'] as int,
    location: json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LaunchPadModelToJson(_$_LaunchPadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attempted_launches': instance.attemptedLaunches,
      'details': instance.details,
      'name': instance.name,
      'status': Mapper.statusInString(instance.status),
      'successful_launches': instance.successfulLaunches,
      'location': instance.location,
    };
