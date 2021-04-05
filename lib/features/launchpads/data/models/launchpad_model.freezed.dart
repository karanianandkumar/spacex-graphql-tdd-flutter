// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'launchpad_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LaunchPadModel _$LaunchPadModelFromJson(Map<String, dynamic> json) {
  return _LaunchPadModel.fromJson(json);
}

/// @nodoc
class _$LaunchPadModelTearOff {
  const _$LaunchPadModelTearOff();

// ignore: unused_element
  _LaunchPadModel call(
      {@required
          String id,
      @required
      @JsonKey(name: 'attempted_launches')
          int attemptedLaunches,
      @required
          String details,
      @required
          String name,
      @required
      @JsonKey(fromJson: Mapper.statusInType, toJson: Mapper.statusInString, name: 'status')
          LaunchPadStatus status,
      @required
      @JsonKey(name: 'successful_launches')
          int successfulLaunches,
      @required
          Location location}) {
    return _LaunchPadModel(
      id: id,
      attemptedLaunches: attemptedLaunches,
      details: details,
      name: name,
      status: status,
      successfulLaunches: successfulLaunches,
      location: location,
    );
  }

// ignore: unused_element
  LaunchPadModel fromJson(Map<String, Object> json) {
    return LaunchPadModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LaunchPadModel = _$LaunchPadModelTearOff();

/// @nodoc
mixin _$LaunchPadModel {
  String get id;
  @JsonKey(name: 'attempted_launches')
  int get attemptedLaunches;
  String get details;
  String get name;
  @JsonKey(
      fromJson: Mapper.statusInType,
      toJson: Mapper.statusInString,
      name: 'status')
  LaunchPadStatus get status;
  @JsonKey(name: 'successful_launches')
  int get successfulLaunches;
  Location get location;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LaunchPadModelCopyWith<LaunchPadModel> get copyWith;
}

/// @nodoc
abstract class $LaunchPadModelCopyWith<$Res> {
  factory $LaunchPadModelCopyWith(
          LaunchPadModel value, $Res Function(LaunchPadModel) then) =
      _$LaunchPadModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'attempted_launches')
          int attemptedLaunches,
      String details,
      String name,
      @JsonKey(fromJson: Mapper.statusInType, toJson: Mapper.statusInString, name: 'status')
          LaunchPadStatus status,
      @JsonKey(name: 'successful_launches')
          int successfulLaunches,
      Location location});

  $LaunchPadStatusCopyWith<$Res> get status;
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$LaunchPadModelCopyWithImpl<$Res>
    implements $LaunchPadModelCopyWith<$Res> {
  _$LaunchPadModelCopyWithImpl(this._value, this._then);

  final LaunchPadModel _value;
  // ignore: unused_field
  final $Res Function(LaunchPadModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object attemptedLaunches = freezed,
    Object details = freezed,
    Object name = freezed,
    Object status = freezed,
    Object successfulLaunches = freezed,
    Object location = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      attemptedLaunches: attemptedLaunches == freezed
          ? _value.attemptedLaunches
          : attemptedLaunches as int,
      details: details == freezed ? _value.details : details as String,
      name: name == freezed ? _value.name : name as String,
      status: status == freezed ? _value.status : status as LaunchPadStatus,
      successfulLaunches: successfulLaunches == freezed
          ? _value.successfulLaunches
          : successfulLaunches as int,
      location: location == freezed ? _value.location : location as Location,
    ));
  }

  @override
  $LaunchPadStatusCopyWith<$Res> get status {
    if (_value.status == null) {
      return null;
    }
    return $LaunchPadStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $LocationCopyWith<$Res> get location {
    if (_value.location == null) {
      return null;
    }
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$LaunchPadModelCopyWith<$Res>
    implements $LaunchPadModelCopyWith<$Res> {
  factory _$LaunchPadModelCopyWith(
          _LaunchPadModel value, $Res Function(_LaunchPadModel) then) =
      __$LaunchPadModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'attempted_launches')
          int attemptedLaunches,
      String details,
      String name,
      @JsonKey(fromJson: Mapper.statusInType, toJson: Mapper.statusInString, name: 'status')
          LaunchPadStatus status,
      @JsonKey(name: 'successful_launches')
          int successfulLaunches,
      Location location});

  @override
  $LaunchPadStatusCopyWith<$Res> get status;
  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$LaunchPadModelCopyWithImpl<$Res>
    extends _$LaunchPadModelCopyWithImpl<$Res>
    implements _$LaunchPadModelCopyWith<$Res> {
  __$LaunchPadModelCopyWithImpl(
      _LaunchPadModel _value, $Res Function(_LaunchPadModel) _then)
      : super(_value, (v) => _then(v as _LaunchPadModel));

  @override
  _LaunchPadModel get _value => super._value as _LaunchPadModel;

  @override
  $Res call({
    Object id = freezed,
    Object attemptedLaunches = freezed,
    Object details = freezed,
    Object name = freezed,
    Object status = freezed,
    Object successfulLaunches = freezed,
    Object location = freezed,
  }) {
    return _then(_LaunchPadModel(
      id: id == freezed ? _value.id : id as String,
      attemptedLaunches: attemptedLaunches == freezed
          ? _value.attemptedLaunches
          : attemptedLaunches as int,
      details: details == freezed ? _value.details : details as String,
      name: name == freezed ? _value.name : name as String,
      status: status == freezed ? _value.status : status as LaunchPadStatus,
      successfulLaunches: successfulLaunches == freezed
          ? _value.successfulLaunches
          : successfulLaunches as int,
      location: location == freezed ? _value.location : location as Location,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LaunchPadModel implements _LaunchPadModel {
  const _$_LaunchPadModel(
      {@required
          this.id,
      @required
      @JsonKey(name: 'attempted_launches')
          this.attemptedLaunches,
      @required
          this.details,
      @required
          this.name,
      @required
      @JsonKey(fromJson: Mapper.statusInType, toJson: Mapper.statusInString, name: 'status')
          this.status,
      @required
      @JsonKey(name: 'successful_launches')
          this.successfulLaunches,
      @required
          this.location})
      : assert(id != null),
        assert(attemptedLaunches != null),
        assert(details != null),
        assert(name != null),
        assert(status != null),
        assert(successfulLaunches != null),
        assert(location != null);

  factory _$_LaunchPadModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LaunchPadModelFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'attempted_launches')
  final int attemptedLaunches;
  @override
  final String details;
  @override
  final String name;
  @override
  @JsonKey(
      fromJson: Mapper.statusInType,
      toJson: Mapper.statusInString,
      name: 'status')
  final LaunchPadStatus status;
  @override
  @JsonKey(name: 'successful_launches')
  final int successfulLaunches;
  @override
  final Location location;

  @override
  String toString() {
    return 'LaunchPadModel(id: $id, attemptedLaunches: $attemptedLaunches, details: $details, name: $name, status: $status, successfulLaunches: $successfulLaunches, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LaunchPadModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attemptedLaunches, attemptedLaunches) ||
                const DeepCollectionEquality()
                    .equals(other.attemptedLaunches, attemptedLaunches)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.successfulLaunches, successfulLaunches) ||
                const DeepCollectionEquality()
                    .equals(other.successfulLaunches, successfulLaunches)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attemptedLaunches) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(successfulLaunches) ^
      const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$LaunchPadModelCopyWith<_LaunchPadModel> get copyWith =>
      __$LaunchPadModelCopyWithImpl<_LaunchPadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LaunchPadModelToJson(this);
  }
}

abstract class _LaunchPadModel implements LaunchPadModel {
  const factory _LaunchPadModel(
      {@required
          String id,
      @required
      @JsonKey(name: 'attempted_launches')
          int attemptedLaunches,
      @required
          String details,
      @required
          String name,
      @required
      @JsonKey(fromJson: Mapper.statusInType, toJson: Mapper.statusInString, name: 'status')
          LaunchPadStatus status,
      @required
      @JsonKey(name: 'successful_launches')
          int successfulLaunches,
      @required
          Location location}) = _$_LaunchPadModel;

  factory _LaunchPadModel.fromJson(Map<String, dynamic> json) =
      _$_LaunchPadModel.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'attempted_launches')
  int get attemptedLaunches;
  @override
  String get details;
  @override
  String get name;
  @override
  @JsonKey(
      fromJson: Mapper.statusInType,
      toJson: Mapper.statusInString,
      name: 'status')
  LaunchPadStatus get status;
  @override
  @JsonKey(name: 'successful_launches')
  int get successfulLaunches;
  @override
  Location get location;
  @override
  @JsonKey(ignore: true)
  _$LaunchPadModelCopyWith<_LaunchPadModel> get copyWith;
}
