import 'package:json_annotation/json_annotation.dart';

import 'geo_point.dart';
import '../interfaces/serializable.dart';

part 'place_polygon.g.dart';

@JsonSerializable()
class PlacePolygon implements Serializable {
  List<GeoPoint> geoPoints;

  String commonName;

  PlacePolygon({
    this.geoPoints,
    this.commonName,
  });

  factory PlacePolygon.fromJson(Map<String, dynamic> json) {
    return _$PlacePolygonFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$PlacePolygonToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
