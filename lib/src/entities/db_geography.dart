import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/db_geography_well_known_value.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'db_geography.g.dart';

@JsonSerializable()
class DbGeography implements Serializable {
  DbGeographyWellKnownValue geography;

  DbGeography({
    this.geography,
  });

  factory DbGeography.fromJson(Map<String, dynamic> json) {
    return _$DbGeographyFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$DbGeographyToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
