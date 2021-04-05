import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehical.freezed.dart';

@freezed
abstract class Vehical with _$Vehical {
  const factory Vehical(
      {@required String id,
      @required String country,
      @required String name,
      @required int successRatePercent}) = _Vehical;
}
