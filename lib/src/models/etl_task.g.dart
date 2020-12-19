// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'etl_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EtlTask _$EtlTaskFromJson(Map<String, dynamic> json) {
  return EtlTask(
    id: json['id'] as int?,
    taskName: json['taskName'] as String?,
    description: json['description'] as String?,
    enabled: json['enabled'] as bool?,
    scheduleActive: json['scheduleActive'] as bool?,
    frequency: json['frequency'] as int?,
    firstRun: json['firstRun'] == null
        ? null
        : DateTime.parse(json['firstRun'] as String),
    lastRun: json['lastRun'] == null
        ? null
        : DateTime.parse(json['lastRun'] as String),
    lastRunStatus: json['lastRunStatus'] as int?,
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    modified: json['modified'] == null
        ? null
        : DateTime.parse(json['modified'] as String),
    isDeleted: json['isDeleted'] as bool?,
    isPriority: json['isPriority'] as bool?,
  );
}

Map<String, dynamic> _$EtlTaskToJson(EtlTask instance) => <String, dynamic>{
      'id': instance.id,
      'taskName': instance.taskName,
      'description': instance.description,
      'enabled': instance.enabled,
      'scheduleActive': instance.scheduleActive,
      'frequency': instance.frequency,
      'firstRun': instance.firstRun?.toIso8601String(),
      'lastRun': instance.lastRun?.toIso8601String(),
      'lastRunStatus': instance.lastRunStatus,
      'created': instance.created?.toIso8601String(),
      'modified': instance.modified?.toIso8601String(),
      'isDeleted': instance.isDeleted,
      'isPriority': instance.isPriority,
    };
