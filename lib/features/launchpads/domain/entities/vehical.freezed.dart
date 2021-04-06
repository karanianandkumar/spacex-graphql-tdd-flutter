// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vehical.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VehicalTearOff {
  const _$VehicalTearOff();

// ignore: unused_element
  _Vehical call(
      {@required String id,
      @required String country,
      @required String name,
      @required bool active,
      @required String description,
      @required String company,
      @required int successRatePercent}) {
    return _Vehical(
      id: id,
      country: country,
      name: name,
      active: active,
      description: description,
      company: company,
      successRatePercent: successRatePercent,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Vehical = _$VehicalTearOff();

/// @nodoc
mixin _$Vehical {
  String get id;
  String get country;
  String get name;
  bool get active;
  String get description;
  String get company;
  int get successRatePercent;

  @JsonKey(ignore: true)
  $VehicalCopyWith<Vehical> get copyWith;
}

/// @nodoc
abstract class $VehicalCopyWith<$Res> {
  factory $VehicalCopyWith(Vehical value, $Res Function(Vehical) then) =
      _$VehicalCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String country,
      String name,
      bool active,
      String description,
      String company,
      int successRatePercent});
}

/// @nodoc
class _$VehicalCopyWithImpl<$Res> implements $VehicalCopyWith<$Res> {
  _$VehicalCopyWithImpl(this._value, this._then);

  final Vehical _value;
  // ignore: unused_field
  final $Res Function(Vehical) _then;

  @override
  $Res call({
    Object id = freezed,
    Object country = freezed,
    Object name = freezed,
    Object active = freezed,
    Object description = freezed,
    Object company = freezed,
    Object successRatePercent = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      country: country == freezed ? _value.country : country as String,
      name: name == freezed ? _value.name : name as String,
      active: active == freezed ? _value.active : active as bool,
      description:
          description == freezed ? _value.description : description as String,
      company: company == freezed ? _value.company : company as String,
      successRatePercent: successRatePercent == freezed
          ? _value.successRatePercent
          : successRatePercent as int,
    ));
  }
}

/// @nodoc
abstract class _$VehicalCopyWith<$Res> implements $VehicalCopyWith<$Res> {
  factory _$VehicalCopyWith(_Vehical value, $Res Function(_Vehical) then) =
      __$VehicalCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String country,
      String name,
      bool active,
      String description,
      String company,
      int successRatePercent});
}

/// @nodoc
class __$VehicalCopyWithImpl<$Res> extends _$VehicalCopyWithImpl<$Res>
    implements _$VehicalCopyWith<$Res> {
  __$VehicalCopyWithImpl(_Vehical _value, $Res Function(_Vehical) _then)
      : super(_value, (v) => _then(v as _Vehical));

  @override
  _Vehical get _value => super._value as _Vehical;

  @override
  $Res call({
    Object id = freezed,
    Object country = freezed,
    Object name = freezed,
    Object active = freezed,
    Object description = freezed,
    Object company = freezed,
    Object successRatePercent = freezed,
  }) {
    return _then(_Vehical(
      id: id == freezed ? _value.id : id as String,
      country: country == freezed ? _value.country : country as String,
      name: name == freezed ? _value.name : name as String,
      active: active == freezed ? _value.active : active as bool,
      description:
          description == freezed ? _value.description : description as String,
      company: company == freezed ? _value.company : company as String,
      successRatePercent: successRatePercent == freezed
          ? _value.successRatePercent
          : successRatePercent as int,
    ));
  }
}

/// @nodoc
class _$_Vehical implements _Vehical {
  const _$_Vehical(
      {@required this.id,
      @required this.country,
      @required this.name,
      @required this.active,
      @required this.description,
      @required this.company,
      @required this.successRatePercent})
      : assert(id != null),
        assert(country != null),
        assert(name != null),
        assert(active != null),
        assert(description != null),
        assert(company != null),
        assert(successRatePercent != null);

  @override
  final String id;
  @override
  final String country;
  @override
  final String name;
  @override
  final bool active;
  @override
  final String description;
  @override
  final String company;
  @override
  final int successRatePercent;

  @override
  String toString() {
    return 'Vehical(id: $id, country: $country, name: $name, active: $active, description: $description, company: $company, successRatePercent: $successRatePercent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Vehical &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality()
                    .equals(other.company, company)) &&
            (identical(other.successRatePercent, successRatePercent) ||
                const DeepCollectionEquality()
                    .equals(other.successRatePercent, successRatePercent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(successRatePercent);

  @JsonKey(ignore: true)
  @override
  _$VehicalCopyWith<_Vehical> get copyWith =>
      __$VehicalCopyWithImpl<_Vehical>(this, _$identity);
}

abstract class _Vehical implements Vehical {
  const factory _Vehical(
      {@required String id,
      @required String country,
      @required String name,
      @required bool active,
      @required String description,
      @required String company,
      @required int successRatePercent}) = _$_Vehical;

  @override
  String get id;
  @override
  String get country;
  @override
  String get name;
  @override
  bool get active;
  @override
  String get description;
  @override
  String get company;
  @override
  int get successRatePercent;
  @override
  @JsonKey(ignore: true)
  _$VehicalCopyWith<_Vehical> get copyWith;
}
