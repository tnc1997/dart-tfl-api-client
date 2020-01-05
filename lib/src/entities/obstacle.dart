import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'obstacle.g.dart';

@JsonSerializable()
class Obstacle implements Serializable {
  String type;

  String incline;

  int stopId;

  String position;

  Obstacle({
    this.type,
    this.incline,
    this.stopId,
    this.position,
  });

  factory Obstacle.fromJson(Map<String, dynamic> json) {
    return _$ObstacleFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$ObstacleToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
