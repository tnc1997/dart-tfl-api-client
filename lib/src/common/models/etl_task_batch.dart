import 'package:json_annotation/json_annotation.dart';

import 'etl_task_batch_item.dart';

part 'etl_task_batch.g.dart';

@JsonSerializable()
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
  ) =>
      _$EtlTaskBatchFromJson(json);

  static List<EtlTaskBatch> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => EtlTaskBatch.fromJson(value),
          )
          .toList();

  static Map<String, EtlTaskBatch> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          EtlTaskBatch.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$EtlTaskBatchToJson(this);
}
