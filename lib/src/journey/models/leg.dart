﻿import '../../common/models/disruption.dart';
import '../../common/models/identifier.dart';
import '../../common/models/stop_point.dart';
import 'instruction.dart';
import 'obstacle.dart';
import 'path.dart';
import 'planned_work.dart';
import 'point.dart';
import 'route_option.dart';

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
  ) {
    return Leg(
      duration: (json['duration'] as num?)?.toInt(),
      speed: json['speed'] as String?,
      instruction: json['instruction'] == null
          ? null
          : Instruction.fromJson(json['instruction'] as Map<String, dynamic>),
      obstacles: (json['obstacles'] as List<dynamic>?)
          ?.map((e) => Obstacle.fromJson(e as Map<String, dynamic>))
          .toList(),
      departureTime: json['departureTime'] == null
          ? null
          : DateTime.parse(json['departureTime'] as String),
      arrivalTime: json['arrivalTime'] == null
          ? null
          : DateTime.parse(json['arrivalTime'] as String),
      departurePoint: json['departurePoint'] == null
          ? null
          : Point1.fromJson(json['departurePoint'] as Map<String, dynamic>),
      arrivalPoint: json['arrivalPoint'] == null
          ? null
          : Point1.fromJson(json['arrivalPoint'] as Map<String, dynamic>),
      path: json['path'] == null
          ? null
          : Path.fromJson(json['path'] as Map<String, dynamic>),
      routeOptions: (json['routeOptions'] as List<dynamic>?)
          ?.map((e) => RouteOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      mode: json['mode'] == null
          ? null
          : Identifier.fromJson(json['mode'] as Map<String, dynamic>),
      disruptions: (json['disruptions'] as List<dynamic>?)
          ?.map((e) => Disruption.fromJson(e as Map<String, dynamic>))
          .toList(),
      plannedWorks: (json['plannedWorks'] as List<dynamic>?)
          ?.map((e) => PlannedWork.fromJson(e as Map<String, dynamic>))
          .toList(),
      distance: (json['distance'] as num?)?.toDouble(),
    );
  }

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
