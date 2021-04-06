// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vehical_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
VehicalModel _$VehicalModelFromJson(Map<String, dynamic> json) {
  return _VehicalModel.fromJson(json);
}

/// @nodoc
class _$VehicalModelTearOff {
  const _$VehicalModelTearOff();

// ignore: unused_element
  _VehicalModel call(
      {@required String id,
      @required String country,
      @required String name,
      @required bool active,
      @required String description,
      @required String company,
      @required @JsonKey(name: 'success_rate_pct') int successRatePercent}) {
    return _VehicalModel(
      id: id,
      country: country,
      name: name,
      active: active,
      description: description,
      company: company,
      successRatePercent: successRatePercent,
    );
  }

// ignore: unused_element
  VehicalModel fromJson(Map<String, Object> json) {
    return VehicalModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $VehicalModel = _$VehicalModelTearOff();

/// @nodoc
mixin _$VehicalModel {
  String get id;
  String get country;
  String get name;
  bool get active;
  String get description;
  String get company;
  @JsonKey(name: 'success_rate_pct')
  int get successRatePercent;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $VehicalModelCopyWith<VehicalModel> get copyWith;
}

/// @nodoc
abstract class $VehicalModelCopyWith<$Res> {
  factory $VehicalModelCopyWith(
          VehicalModel value, $Res Function(VehicalModel) then) =
      _$VehicalModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String country,
      String name,
      bool active,
      String description,
      String company,
      @JsonKey(name: 'success_rate_pct') int successRatePercent});
}

/// @nodoc
class _$VehicalModelCopyWithImpl<$Res> implements $VehicalModelCopyWith<$Res> {
  _$VehicalModelCopyWithImpl(this._value, this._then);

  final VehicalModel _value;
  // ignore: unused_field
  final $Res Function(VehicalModel) _then;

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
abstract class _$VehicalModelCopyWith<$Res>
    implements $VehicalModelCopyWith<$Res> {
  factory _$VehicalModelCopyWith(
          _VehicalModel value, $Res Function(_VehicalModel) then) =
      __$VehicalModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String country,
      String name,
      bool active,
      String description,
      String company,
      @JsonKey(name: 'success_rate_pct') int successRatePercent});
}

/// @nodoc
class __$VehicalModelCopyWithImpl<$Res> extends _$VehicalModelCopyWithImpl<$Res>
    implements _$VehicalModelCopyWith<$Res> {
  __$VehicalModelCopyWithImpl(
      _VehicalModel _value, $Res Function(_VehicalModel) _then)
      : super(_value, (v) => _then(v as _VehicalModel));

  @override
  _VehicalModel get _value => super._value as _VehicalModel;

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
    return _then(_VehicalModel(
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

@JsonSerializable()

/// @nodoc
class _$_VehicalModel implements _VehicalModel {
  const _$_VehicalModel(
      {@required this.id,
      @required this.country,
      @required this.name,
      @required this.active,
      @required this.description,
      @required this.company,
      @required @JsonKey(name: 'success_rate_pct') this.successRatePercent})
      : assert(id != null),
        assert(country != null),
        assert(name != null),
        assert(active != null),
        assert(description != null),
        assert(company != null),
        assert(successRatePercent != null);

  factory _$_VehicalModel.fromJson(Map<String, dynamic> json) =>
      _$_$_VehicalModelFromJson(json);

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
  @JsonKey(name: 'success_rate_pct')
  final int successRatePercent;

  @override
  String toString() {
    return 'VehicalModel(id: $id, country: $country, name: $name, active: $active, description: $description, company: $company, successRatePercent: $successRatePercent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VehicalModel &&
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
  _$VehicalModelCopyWith<_VehicalModel> get copyWith =>
      __$VehicalModelCopyWithImpl<_VehicalModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VehicalModelToJson(this);
  }
}

abstract class _VehicalModel implements VehicalModel {
  const factory _VehicalModel(
      {@required
          String id,
      @required
          String country,
      @required
          String name,
      @required
          bool active,
      @required
          String description,
      @required
          String company,
      @required
      @JsonKey(name: 'success_rate_pct')
          int successRatePercent}) = _$_VehicalModel;

  factory _VehicalModel.fromJson(Map<String, dynamic> json) =
      _$_VehicalModel.fromJson;

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
  @JsonKey(name: 'success_rate_pct')
  int get successRatePercent;
  @override
  @JsonKey(ignore: true)
  _$VehicalModelCopyWith<_VehicalModel> get copyWith;
}
