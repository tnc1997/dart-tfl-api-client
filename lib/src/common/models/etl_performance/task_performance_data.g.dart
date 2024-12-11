// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_performance_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskPerformanceData _$TaskPerformanceDataFromJson(Map<String, dynamic> json) {
  return TaskPerformanceData(
    failedTasks: (json['failedTasks'] as List<dynamic>?)
        ?.map((e) => FailedTask.fromJson(e as Map<String, dynamic>))
        .toList(),
    taskPerformance: (json['taskPerformance'] as List<dynamic>?)
        ?.map((e) => TaskPerformance.fromJson(e as Map<String, dynamic>))
        .toList(),
    taskPerformanceHistory:
        (json['taskPerformanceHistory'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          int.parse(k),
          (e as List<dynamic>)
              .map((e) =>
                  TaskPerformanceHistory.fromJson(e as Map<String, dynamic>))
              .toList()),
    ),
  );
}

Map<String, dynamic> _$TaskPerformanceDataToJson(
        TaskPerformanceData instance) =>
    <String, dynamic>{
      'failedTasks': instance.failedTasks,
      'taskPerformance': instance.taskPerformance,
      'taskPerformanceHistory': instance.taskPerformanceHistory
          ?.map((k, e) => MapEntry(k.toString(), e)),
    };
