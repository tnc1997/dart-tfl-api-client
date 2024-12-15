import 'etl_task.dart';

class EtlTaskBatchItem {
  int? order;
  EtlTask? etlTask;

  EtlTaskBatchItem({
    this.order,
    this.etlTask,
  });

  factory EtlTaskBatchItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return EtlTaskBatchItem(
      order: (json['order'] as num?)?.toInt(),
      etlTask: json['etlTask'] == null
          ? null
          : EtlTask.fromJson(json['etlTask'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'order': order,
      'etlTask': etlTask,
    };
  }
}
