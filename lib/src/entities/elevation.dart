import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'elevation.g.dart';

@JsonSerializable()
class Elevation implements Serializable {
  int distance;

  double startLat;

  double startLon;

  double endLat;

  double endLon;

  int heightFromPreviousPoint;

  double gradient;

  Elevation({
    this.distance,
    this.startLat,
    this.startLon,
    this.endLat,
    this.endLon,
    this.heightFromPreviousPoint,
    this.gradient,
  });

  factory Elevation.fromJson(Map<String, dynamic> json) {
    return _$ElevationFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$ElevationToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
