import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'identifier.dart';
import 'instruction.dart';
import 'line_disruption.dart';
import 'point.dart';
import 'obstacle.dart';
import 'path.dart';
import 'planned_work.dart';
import 'route_option.dart';

part 'leg.g.dart';

@JsonSerializable()
class Leg implements Serializable {
  int duration;

  String speed;

  Instruction instruction;

  List<Obstacle> obstacles;

  DateTime departureTime;

  DateTime arrivalTime;

  Point departurePoint;

  Point arrivalPoint;

  Path path;

  List<RouteOption> routeOptions;

  Identifier mode;

  List<LineDisruption> disruptions;

  List<PlannedWork> plannedWorks;

  double distance;

  bool isDisrupted;

  bool hasFixedLocations;

  Leg({
    this.duration,
    this.speed,
    this.instruction,
    this.obstacles,
    this.departureTime,
    this.arrivalTime,
    this.departurePoint,
    this.arrivalPoint,
    this.path,
    this.routeOptions,
    this.mode,
    this.disruptions,
    this.plannedWorks,
    this.distance,
    this.isDisrupted,
    this.hasFixedLocations,
  });

  factory Leg.fromJson(Map<String, dynamic> json) {
    return _$LegFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$LegToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
