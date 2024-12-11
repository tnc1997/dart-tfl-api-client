// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'road_disruption_tdm_extension.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoadDisruptionTdmExtension _$RoadDisruptionTdmExtensionFromJson(
    Map<String, dynamic> json) {
  return RoadDisruptionTdmExtension(
    roadDisruptionId: json['roadDisruptionId'] as String?,
    relatedDisruptionId: json['relatedDisruptionId'] as String?,
    tdmCategory: json['tdmCategory'] as String?,
    timeframe: json['timeframe'] as String?,
    publishStartDate: json['publishStartDate'] == null
        ? null
        : DateTime.parse(json['publishStartDate'] as String),
    publishEndDate: json['publishEndDate'] == null
        ? null
        : DateTime.parse(json['publishEndDate'] as String),
  );
}

Map<String, dynamic> _$RoadDisruptionTdmExtensionToJson(
        RoadDisruptionTdmExtension instance) =>
    <String, dynamic>{
      'roadDisruptionId': instance.roadDisruptionId,
      'relatedDisruptionId': instance.relatedDisruptionId,
      'tdmCategory': instance.tdmCategory,
      'timeframe': instance.timeframe,
      'publishStartDate': instance.publishStartDate?.toIso8601String(),
      'publishEndDate': instance.publishEndDate?.toIso8601String(),
    };
