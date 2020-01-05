import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/identifier.dart';
import 'package:tfl_api_client/src/entities/instruction.dart';
import 'package:tfl_api_client/src/entities/line_disruption.dart';
import 'package:tfl_api_client/src/entities/obstacle.dart';
import 'package:tfl_api_client/src/entities/path.dart';
import 'package:tfl_api_client/src/entities/planned_work.dart';
import 'package:tfl_api_client/src/entities/point.dart';
import 'package:tfl_api_client/src/entities/route_option.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

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
