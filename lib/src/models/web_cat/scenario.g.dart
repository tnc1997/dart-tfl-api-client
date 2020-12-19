// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scenario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Scenario _$ScenarioFromJson(Map<String, dynamic> json) {
  return Scenario(
    id: json['id'] as String?,
    title: json['title'] as String?,
    description: json['description'] as String?,
    year: json['year'] as int?,
    timesOfDay: (json['timesOfDay'] as List<dynamic>?)
        ?.map((e) => ScenarioTimeOfDay.fromJson(e as Map<String, dynamic>))
        .toList(),
    modes: (json['modes'] as List<dynamic>?)
        ?.map((e) => ScenarioMode.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ScenarioToJson(Scenario instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'year': instance.year,
      'timesOfDay': instance.timesOfDay,
      'modes': instance.modes,
    };
