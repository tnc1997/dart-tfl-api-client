// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ptal_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PtalResult _$PtalResultFromJson(Map<String, dynamic> json) {
  return PtalResult(
    value: json['value'] as String?,
    lastRefreshed: json['lastRefreshed'] == null
        ? null
        : DateTime.parse(json['lastRefreshed'] as String),
    scenario: json['scenario'] == null
        ? null
        : PtalScenario.fromJson(json['scenario'] as Map<String, dynamic>),
    gridId: json['gridId'] as int?,
  );
}

Map<String, dynamic> _$PtalResultToJson(PtalResult instance) =>
    <String, dynamic>{
      'value': instance.value,
      'lastRefreshed': instance.lastRefreshed?.toIso8601String(),
      'scenario': instance.scenario,
      'gridId': instance.gridId,
    };
