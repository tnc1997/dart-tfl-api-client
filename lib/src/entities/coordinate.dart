import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'coordinate.g.dart';

@JsonSerializable()
class Coordinate implements Serializable {
  double longitude;

  double latitude;

  double easting;

  double northing;

  int xCoord;

  int yCoord;

  Coordinate({
    this.longitude,
    this.latitude,
    this.easting,
    this.northing,
    this.xCoord,
    this.yCoord,
  });

  factory Coordinate.fromJson(Map<String, dynamic> json) {
    return _$CoordinateFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$CoordinateToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
