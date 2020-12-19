// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'obstacle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Obstacle _$ObstacleFromJson(Map<String, dynamic> json) {
  return Obstacle(
    type: json['type'] as String?,
    incline: json['incline'] as String?,
    stopId: json['stopId'] as int?,
    position: json['position'] as String?,
  );
}

Map<String, dynamic> _$ObstacleToJson(Obstacle instance) => <String, dynamic>{
      'type': instance.type,
      'incline': instance.incline,
      'stopId': instance.stopId,
      'position': instance.position,
    };
