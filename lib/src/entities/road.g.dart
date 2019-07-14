// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'road.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Road _$RoadFromJson(Map<String, dynamic> json) {
  return Road(
      id: json['id'] as String,
      displayName: json['displayName'] as String,
      group: json['group'] as String,
      statusSeverity: json['statusSeverity'] as String,
      statusSeverityDescription: json['statusSeverityDescription'] as String,
      bounds: json['bounds'] as String,
      envelope: json['envelope'] as String,
      statusAggregationStartDate: json['statusAggregationStartDate'] == null
          ? null
          : DateTime.parse(json['statusAggregationStartDate'] as String),
      statusAggregationEndDate: json['statusAggregationEndDate'] == null
          ? null
          : DateTime.parse(json['statusAggregationEndDate'] as String),
      url: json['url'] as String);
}

Map<String, dynamic> _$RoadToJson(Road instance) => <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'group': instance.group,
      'statusSeverity': instance.statusSeverity,
      'statusSeverityDescription': instance.statusSeverityDescription,
      'bounds': instance.bounds,
      'envelope': instance.envelope,
      'statusAggregationStartDate':
          instance.statusAggregationStartDate?.toIso8601String(),
      'statusAggregationEndDate':
          instance.statusAggregationEndDate?.toIso8601String(),
      'url': instance.url
    };
