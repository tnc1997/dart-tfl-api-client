import 'package:json_annotation/json_annotation.dart';

part 'task_performance.g.dart';

@JsonSerializable()
class TaskPerformance {
  int? id;
  String? name;
  int? frequency;
  String? lastRunTime;
  String? averageRunTime;
  bool? scheduleActive;
  String? status;

  TaskPerformance({
    this.id,
    this.name,
    this.frequency,
    this.lastRunTime,
    this.averageRunTime,
    this.scheduleActive,
    this.status,
  });

  factory TaskPerformance.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TaskPerformanceFromJson(json);

  static List<TaskPerformance> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => TaskPerformance.fromJson(value),
          )
          .toList();

  static Map<String, TaskPerformance> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          TaskPerformance.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$TaskPerformanceToJson(this);
}
