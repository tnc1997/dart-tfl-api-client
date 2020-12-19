// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_health_parent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiHealthParent _$ApiHealthParentFromJson(Map<String, dynamic> json) {
  return ApiHealthParent(
    currentApiHealth: json['currentApiHealth'] == null
        ? null
        : ApiHealth.fromJson(json['currentApiHealth'] as Map<String, dynamic>),
    plannedOutages: (json['plannedOutages'] as List<dynamic>?)
        ?.map((e) => PlannedOutage.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ApiHealthParentToJson(ApiHealthParent instance) =>
    <String, dynamic>{
      'currentApiHealth': instance.currentApiHealth,
      'plannedOutages': instance.plannedOutages,
    };
