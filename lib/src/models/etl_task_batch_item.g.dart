// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'etl_task_batch_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EtlTaskBatchItem _$EtlTaskBatchItemFromJson(Map<String, dynamic> json) {
  return EtlTaskBatchItem(
    order: json['order'] as int?,
    etlTask: json['etlTask'] == null
        ? null
        : EtlTask.fromJson(json['etlTask'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EtlTaskBatchItemToJson(EtlTaskBatchItem instance) =>
    <String, dynamic>{
      'order': instance.order,
      'etlTask': instance.etlTask,
    };
