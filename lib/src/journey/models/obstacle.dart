import 'package:json_annotation/json_annotation.dart';

part 'obstacle.g.dart';

@JsonSerializable()
class Obstacle {
  String? type;
  String? incline;
  int? stopId;
  String? position;

  Obstacle({
    this.type,
    this.incline,
    this.stopId,
    this.position,
  });

  factory Obstacle.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ObstacleFromJson(json);

  static List<Obstacle> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Obstacle.fromJson(value),
          )
          .toList();

  static Map<String, Obstacle> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Obstacle.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ObstacleToJson(this);
}
