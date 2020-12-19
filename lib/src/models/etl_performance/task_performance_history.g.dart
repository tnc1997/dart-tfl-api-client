// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_performance_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskPerformanceHistory _$TaskPerformanceHistoryFromJson(
    Map<String, dynamic> json) {
  return TaskPerformanceHistory(
    taskId: json['taskId'] as int?,
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    runTime: json['runTime'] as String?,
  );
}

Map<String, dynamic> _$TaskPerformanceHistoryToJson(
        TaskPerformanceHistory instance) =>
    <String, dynamic>{
      'taskId': instance.taskId,
      'created': instance.created?.toIso8601String(),
      'runTime': instance.runTime,
    };
