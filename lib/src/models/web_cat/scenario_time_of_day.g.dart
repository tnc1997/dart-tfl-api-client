// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scenario_time_of_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScenarioTimeOfDay _$ScenarioTimeOfDayFromJson(Map<String, dynamic> json) {
  return ScenarioTimeOfDay(
    id: json['id'] as String?,
    title: json['title'] as String?,
    scenarioCode: json['scenarioCode'] as String?,
    scenarioMode: json['scenarioMode'] as String?,
  );
}

Map<String, dynamic> _$ScenarioTimeOfDayToJson(ScenarioTimeOfDay instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'scenarioCode': instance.scenarioCode,
      'scenarioMode': instance.scenarioMode,
    };
