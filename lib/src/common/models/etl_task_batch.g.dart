// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'etl_task_batch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EtlTaskBatch _$EtlTaskBatchFromJson(Map<String, dynamic> json) {
  return EtlTaskBatch(
    id: json['id'] as int?,
    name: json['name'] as String?,
    lastRun: json['lastRun'] == null
        ? null
        : DateTime.parse(json['lastRun'] as String),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    etlTaskBatchItem: (json['etlTaskBatchItem'] as List<dynamic>?)
        ?.map((e) => EtlTaskBatchItem.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$EtlTaskBatchToJson(EtlTaskBatch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lastRun': instance.lastRun?.toIso8601String(),
      'created': instance.created?.toIso8601String(),
      'etlTaskBatchItem': instance.etlTaskBatchItem,
    };
