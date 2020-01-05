import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'point.g.dart';

@JsonSerializable()
class Point implements Serializable {
  /// The WGS84 latitude of the location.
  double lat;

  /// The WGS84 longitude of the location.
  double lon;

  Point({
    this.lat,
    this.lon,
  });

  factory Point.fromJson(Map<String, dynamic> json) {
    return _$PointFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$PointToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
