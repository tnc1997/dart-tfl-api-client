import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/etl_task.dart';

part 'etl_task_batch_item.g.dart';

@JsonSerializable()
class EtlTaskBatchItem {
  int? order;
  EtlTask? etlTask;

  EtlTaskBatchItem({
    this.order,
    this.etlTask,
  });

  factory EtlTaskBatchItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$EtlTaskBatchItemFromJson(json);

  static List<EtlTaskBatchItem> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => EtlTaskBatchItem.fromJson(value),
          )
          .toList();

  static Map<String, EtlTaskBatchItem> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          EtlTaskBatchItem.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$EtlTaskBatchItemToJson(this);
}
