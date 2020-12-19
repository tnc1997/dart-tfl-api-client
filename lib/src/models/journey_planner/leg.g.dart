// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Leg _$LegFromJson(Map<String, dynamic> json) {
  return Leg(
    duration: json['duration'] as int?,
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

Map<String, dynamic> _$LegToJson(Leg instance) => <String, dynamic>{
      'duration': instance.duration,
      'speed': instance.speed,
      'instruction': instance.instruction,
      'obstacles': instance.obstacles,
      'departureTime': instance.departureTime?.toIso8601String(),
      'arrivalTime': instance.arrivalTime?.toIso8601String(),
      'departurePoint': instance.departurePoint,
      'arrivalPoint': instance.arrivalPoint,
      'path': instance.path,
      'routeOptions': instance.routeOptions,
      'mode': instance.mode,
      'disruptions': instance.disruptions,
      'plannedWorks': instance.plannedWorks,
      'distance': instance.distance,
    };
