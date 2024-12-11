import 'package:json_annotation/json_annotation.dart';

import '../disruption.dart';
import '../identifier.dart';
import '../instruction.dart';
import '../stop_point.dart';
import 'obstacle.dart';
import 'path.dart';
import 'planned_work.dart';
import 'point.dart';
import 'route_option.dart';

part 'leg.g.dart';

@JsonSerializable()
class Leg {
  int? duration;
  String? speed;
  Instruction? instruction;
  List<Obstacle>? obstacles;
  DateTime? departureTime;
  DateTime? arrivalTime;
  Point1? departurePoint;
  Point1? arrivalPoint;
  Path? path;
  List<RouteOption>? routeOptions;
  Identifier? mode;
  List<Disruption>? disruptions;
  List<PlannedWork>? plannedWorks;
  double? distance;

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
  });

  bool get isDisrupted => disruptions?.isNotEmpty ?? false;

  bool get hasFixedLocations =>
      departurePoint is StopPoint && arrivalPoint is StopPoint;

  factory Leg.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LegFromJson(json);

  static List<Leg> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Leg.fromJson(value),
          )
          .toList();

  static Map<String, Leg> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Leg.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$LegToJson(this);
}
