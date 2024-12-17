import '../../common/models/disruption.dart';
import '../../common/models/identifier.dart';
import '../../common/models/stop_point.dart';
import 'instruction.dart';
import 'journey_planner_obstacle.dart';
import 'journey_planner_path.dart';
import 'journey_planner_planned_work.dart';
import 'journey_planner_point.dart';
import 'journey_planner_route_option.dart';

class JourneyPlannerLeg {
  int? duration;
  String? speed;
  Instruction? instruction;
  List<JourneyPlannerObstacle>? obstacles;
  DateTime? departureTime;
  DateTime? arrivalTime;
  JourneyPlannerPoint? departurePoint;
  JourneyPlannerPoint? arrivalPoint;
  JourneyPlannerPath? path;
  List<JourneyPlannerRouteOption>? routeOptions;
  Identifier? mode;
  List<Disruption>? disruptions;
  List<JourneyPlannerPlannedWork>? plannedWorks;
  double? distance;

  JourneyPlannerLeg({
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

  factory JourneyPlannerLeg.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerLeg(
      duration: (json['duration'] as num?)?.toInt(),
      speed: json['speed'] as String?,
      instruction: json['instruction'] == null
          ? null
          : Instruction.fromJson(json['instruction'] as Map<String, dynamic>),
      obstacles: (json['obstacles'] as List<dynamic>?)
          ?.map(
              (e) => JourneyPlannerObstacle.fromJson(e as Map<String, dynamic>))
          .toList(),
      departureTime: json['departureTime'] == null
          ? null
          : DateTime.parse(json['departureTime'] as String),
      arrivalTime: json['arrivalTime'] == null
          ? null
          : DateTime.parse(json['arrivalTime'] as String),
      departurePoint: json['departurePoint'] == null
          ? null
          : JourneyPlannerPoint.fromJson(
              json['departurePoint'] as Map<String, dynamic>),
      arrivalPoint: json['arrivalPoint'] == null
          ? null
          : JourneyPlannerPoint.fromJson(
              json['arrivalPoint'] as Map<String, dynamic>),
      path: json['path'] == null
          ? null
          : JourneyPlannerPath.fromJson(json['path'] as Map<String, dynamic>),
      routeOptions: (json['routeOptions'] as List<dynamic>?)
          ?.map((e) =>
              JourneyPlannerRouteOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      mode: json['mode'] == null
          ? null
          : Identifier.fromJson(json['mode'] as Map<String, dynamic>),
      disruptions: (json['disruptions'] as List<dynamic>?)
          ?.map((e) => Disruption.fromJson(e as Map<String, dynamic>))
          .toList(),
      plannedWorks: (json['plannedWorks'] as List<dynamic>?)
          ?.map((e) =>
              JourneyPlannerPlannedWork.fromJson(e as Map<String, dynamic>))
          .toList(),
      distance: (json['distance'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'duration': duration,
      'speed': speed,
      'instruction': instruction,
      'obstacles': obstacles,
      'departureTime': departureTime?.toIso8601String(),
      'arrivalTime': arrivalTime?.toIso8601String(),
      'departurePoint': departurePoint,
      'arrivalPoint': arrivalPoint,
      'path': path,
      'routeOptions': routeOptions,
      'mode': mode,
      'disruptions': disruptions,
      'plannedWorks': plannedWorks,
      'distance': distance,
    };
  }
}
