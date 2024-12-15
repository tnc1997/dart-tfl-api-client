import 'etl_task_batch_item.dart';

class EtlTaskBatch {
  int? id;
  String? name;
  DateTime? lastRun;
  DateTime? created;
  List<EtlTaskBatchItem>? etlTaskBatchItem;

  EtlTaskBatch({
    this.id,
    this.name,
    this.lastRun,
    this.created,
    this.etlTaskBatchItem,
  });

  factory EtlTaskBatch.fromJson(
    Map<String, dynamic> json,
  ) {
    return EtlTaskBatch(
      id: (json['id'] as num?)?.toInt(),
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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'lastRun': lastRun?.toIso8601String(),
      'created': created?.toIso8601String(),
      'etlTaskBatchItem': etlTaskBatchItem,
    };
  }
}
