// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'etl_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EtlRequest _$EtlRequestFromJson(Map<String, dynamic> json) {
  return EtlRequest(
    id: json['id'] as int?,
    taskName: json['taskName'] as String?,
    status: json['status'] as String?,
    resultText: json['resultText'] as String?,
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    modified: json['modified'] == null
        ? null
        : DateTime.parse(json['modified'] as String),
    started: json['started'] == null
        ? null
        : DateTime.parse(json['started'] as String),
    completed: json['completed'] == null
        ? null
        : DateTime.parse(json['completed'] as String),
    ssisExecutionId: json['ssisExecutionId'] as int?,
    subTaskStatus: json['subTaskStatus'] as String?,
    subTaskResult: json['subTaskResult'] as String?,
    createdBy: json['createdBy'] as String?,
    requestType: json['requestType'] as String?,
    expectedCompletionTime: json['expectedCompletionTime'] as String?,
  );
}

Map<String, dynamic> _$EtlRequestToJson(EtlRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'taskName': instance.taskName,
      'status': instance.status,
      'resultText': instance.resultText,
      'created': instance.created?.toIso8601String(),
      'modified': instance.modified?.toIso8601String(),
      'started': instance.started?.toIso8601String(),
      'completed': instance.completed?.toIso8601String(),
      'ssisExecutionId': instance.ssisExecutionId,
      'subTaskStatus': instance.subTaskStatus,
      'subTaskResult': instance.subTaskResult,
      'createdBy': instance.createdBy,
      'requestType': instance.requestType,
      'expectedCompletionTime': instance.expectedCompletionTime,
    };
