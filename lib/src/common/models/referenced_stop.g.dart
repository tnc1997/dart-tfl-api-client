// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referenced_stop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReferencedStop _$ReferencedStopFromJson(Map<String, dynamic> json) {
  return ReferencedStop(
    stopId: json['stopId'] as String?,
    stopPointId: json['stopPointId'] as String?,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$ReferencedStopToJson(ReferencedStop instance) =>
    <String, dynamic>{
      'stopId': instance.stopId,
      'stopPointId': instance.stopPointId,
      'name': instance.name,
    };
