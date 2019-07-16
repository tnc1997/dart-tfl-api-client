import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'db_geography_well_known_value.g.dart';

@JsonSerializable()
class DbGeographyWellKnownValue implements Serializable {
  int coordinateSystemId;

  String wellKnownText;

  List<int> wellKnownBinary;

  DbGeographyWellKnownValue({
    this.coordinateSystemId,
    this.wellKnownText,
    this.wellKnownBinary,
  });

  factory DbGeographyWellKnownValue.fromJson(Map<String, dynamic> json) {
    return _$DbGeographyWellKnownValueFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$DbGeographyWellKnownValueToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
