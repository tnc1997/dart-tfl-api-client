import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'geo_point.g.dart';

@JsonSerializable()
class GeoPoint implements Serializable {
  double lat;

  double lon;

  GeoPoint({
    this.lat,
    this.lon,
  });

  factory GeoPoint.fromJson(Map<String, dynamic> json) {
    return _$GeoPointFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$GeoPointToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
