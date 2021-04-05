// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
class _$LocationTearOff {
  const _$LocationTearOff();

// ignore: unused_element
  _Location call(
      {@required String name,
      @required String region,
      @required double latitude,
      @required double longitude}) {
    return _Location(
      name: name,
      region: region,
      latitude: latitude,
      longitude: longitude,
    );
  }

// ignore: unused_element
  Location fromJson(Map<String, Object> json) {
    return Location.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Location = _$LocationTearOff();

/// @nodoc
mixin _$Location {
  String get name;
  String get region;
  double get latitude;
  double get longitude;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res>;
  $Res call({String name, String region, double latitude, double longitude});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  final Location _value;
  // ignore: unused_field
  final $Res Function(Location) _then;

  @override
  $Res call({
    Object name = freezed,
    Object region = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      region: region == freezed ? _value.region : region as String,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

/// @nodoc
abstract class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) then) =
      __$LocationCopyWithImpl<$Res>;
  @override
  $Res call({String name, String region, double latitude, double longitude});
}

/// @nodoc
class __$LocationCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(_Location _value, $Res Function(_Location) _then)
      : super(_value, (v) => _then(v as _Location));

  @override
  _Location get _value => super._value as _Location;

  @override
  $Res call({
    Object name = freezed,
    Object region = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(_Location(
      name: name == freezed ? _value.name : name as String,
      region: region == freezed ? _value.region : region as String,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Location implements _Location {
  const _$_Location(
      {@required this.name,
      @required this.region,
      @required this.latitude,
      @required this.longitude})
      : assert(name != null),
        assert(region != null),
        assert(latitude != null),
        assert(longitude != null);

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$_$_LocationFromJson(json);

  @override
  final String name;
  @override
  final String region;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'Location(name: $name, region: $region, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Location &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(region) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @JsonKey(ignore: true)
  @override
  _$LocationCopyWith<_Location> get copyWith =>
      __$LocationCopyWithImpl<_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocationToJson(this);
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {@required String name,
      @required String region,
      @required double latitude,
      @required double longitude}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  String get name;
  @override
  String get region;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$LocationCopyWith<_Location> get copyWith;
}
