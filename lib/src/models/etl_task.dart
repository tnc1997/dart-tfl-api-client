import 'package:json_annotation/json_annotation.dart';

part 'etl_task.g.dart';

@JsonSerializable()
class EtlTask {
  int? id;
  String? taskName;
  String? description;
  bool? enabled;
  bool? scheduleActive;
  int? frequency;
  DateTime? firstRun;
  DateTime? lastRun;
  int? lastRunStatus;
  DateTime? created;
  DateTime? modified;
  bool? isDeleted;
  bool? isPriority;

  EtlTask({
    this.id,
    this.taskName,
    this.description,
    this.enabled,
    this.scheduleActive,
    this.frequency,
    this.firstRun,
    this.lastRun,
    this.lastRunStatus,
    this.created,
    this.modified,
    this.isDeleted,
    this.isPriority,
  });

  factory EtlTask.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$EtlTaskFromJson(json);

  static List<EtlTask> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => EtlTask.fromJson(value),
          )
          .toList();

  static Map<String, EtlTask> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          EtlTask.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$EtlTaskToJson(this);
}
