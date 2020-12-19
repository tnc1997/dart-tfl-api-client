// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failed_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FailedTask _$FailedTaskFromJson(Map<String, dynamic> json) {
  return FailedTask(
    name: json['name'] as String?,
    lastRun: json['lastRun'] == null
        ? null
        : DateTime.parse(json['lastRun'] as String),
    resultText: json['resultText'] as String?,
    requestId: json['requestId'] as int?,
    ssisExecutionId: json['ssisExecutionId'] as int?,
    succeededSinceFailure: json['succeededSinceFailure'] as bool?,
    taskId: json['taskId'] as int?,
  );
}

Map<String, dynamic> _$FailedTaskToJson(FailedTask instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lastRun': instance.lastRun?.toIso8601String(),
      'resultText': instance.resultText,
      'requestId': instance.requestId,
      'ssisExecutionId': instance.ssisExecutionId,
      'succeededSinceFailure': instance.succeededSinceFailure,
      'taskId': instance.taskId,
    };
