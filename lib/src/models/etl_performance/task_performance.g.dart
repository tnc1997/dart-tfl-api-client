// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_performance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskPerformance _$TaskPerformanceFromJson(Map<String, dynamic> json) {
  return TaskPerformance(
    id: json['id'] as int?,
    name: json['name'] as String?,
    frequency: json['frequency'] as int?,
    lastRunTime: json['lastRunTime'] as String?,
    averageRunTime: json['averageRunTime'] as String?,
    scheduleActive: json['scheduleActive'] as bool?,
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$TaskPerformanceToJson(TaskPerformance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'frequency': instance.frequency,
      'lastRunTime': instance.lastRunTime,
      'averageRunTime': instance.averageRunTime,
      'scheduleActive': instance.scheduleActive,
      'status': instance.status,
    };
