// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'launchpad.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LaunchPadTearOff {
  const _$LaunchPadTearOff();

// ignore: unused_element
  _LaunchPad call(
      {@required String id,
      @required int attemptedLaunches,
      @required String details,
      @required String name,
      @required LaunchPadStatus status,
      @required int successfulLaunches,
      @required Location location}) {
    return _LaunchPad(
      id: id,
      attemptedLaunches: attemptedLaunches,
      details: details,
      name: name,
      status: status,
      successfulLaunches: successfulLaunches,
      location: location,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LaunchPad = _$LaunchPadTearOff();

/// @nodoc
mixin _$LaunchPad {
  String get id;
  int get attemptedLaunches;
  String get details;
  String get name;
  LaunchPadStatus get status;
  int get successfulLaunches;
  Location get location;

  @JsonKey(ignore: true)
  $LaunchPadCopyWith<LaunchPad> get copyWith;
}

/// @nodoc
abstract class $LaunchPadCopyWith<$Res> {
  factory $LaunchPadCopyWith(LaunchPad value, $Res Function(LaunchPad) then) =
      _$LaunchPadCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int attemptedLaunches,
      String details,
      String name,
      LaunchPadStatus status,
      int successfulLaunches,
      Location location});

  $LaunchPadStatusCopyWith<$Res> get status;
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$LaunchPadCopyWithImpl<$Res> implements $LaunchPadCopyWith<$Res> {
  _$LaunchPadCopyWithImpl(this._value, this._then);

  final LaunchPad _value;
  // ignore: unused_field
  final $Res Function(LaunchPad) _then;

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
abstract class _$LaunchPadCopyWith<$Res> implements $LaunchPadCopyWith<$Res> {
  factory _$LaunchPadCopyWith(
          _LaunchPad value, $Res Function(_LaunchPad) then) =
      __$LaunchPadCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int attemptedLaunches,
      String details,
      String name,
      LaunchPadStatus status,
      int successfulLaunches,
      Location location});

  @override
  $LaunchPadStatusCopyWith<$Res> get status;
  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$LaunchPadCopyWithImpl<$Res> extends _$LaunchPadCopyWithImpl<$Res>
    implements _$LaunchPadCopyWith<$Res> {
  __$LaunchPadCopyWithImpl(_LaunchPad _value, $Res Function(_LaunchPad) _then)
      : super(_value, (v) => _then(v as _LaunchPad));

  @override
  _LaunchPad get _value => super._value as _LaunchPad;

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
    return _then(_LaunchPad(
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

/// @nodoc
class _$_LaunchPad implements _LaunchPad {
  const _$_LaunchPad(
      {@required this.id,
      @required this.attemptedLaunches,
      @required this.details,
      @required this.name,
      @required this.status,
      @required this.successfulLaunches,
      @required this.location})
      : assert(id != null),
        assert(attemptedLaunches != null),
        assert(details != null),
        assert(name != null),
        assert(status != null),
        assert(successfulLaunches != null),
        assert(location != null);

  @override
  final String id;
  @override
  final int attemptedLaunches;
  @override
  final String details;
  @override
  final String name;
  @override
  final LaunchPadStatus status;
  @override
  final int successfulLaunches;
  @override
  final Location location;

  @override
  String toString() {
    return 'LaunchPad(id: $id, attemptedLaunches: $attemptedLaunches, details: $details, name: $name, status: $status, successfulLaunches: $successfulLaunches, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LaunchPad &&
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
  _$LaunchPadCopyWith<_LaunchPad> get copyWith =>
      __$LaunchPadCopyWithImpl<_LaunchPad>(this, _$identity);
}

abstract class _LaunchPad implements LaunchPad {
  const factory _LaunchPad(
      {@required String id,
      @required int attemptedLaunches,
      @required String details,
      @required String name,
      @required LaunchPadStatus status,
      @required int successfulLaunches,
      @required Location location}) = _$_LaunchPad;

  @override
  String get id;
  @override
  int get attemptedLaunches;
  @override
  String get details;
  @override
  String get name;
  @override
  LaunchPadStatus get status;
  @override
  int get successfulLaunches;
  @override
  Location get location;
  @override
  @JsonKey(ignore: true)
  _$LaunchPadCopyWith<_LaunchPad> get copyWith;
}
