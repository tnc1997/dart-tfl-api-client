import 'package:json_annotation/json_annotation.dart';

part 'task_performance_history.g.dart';

@JsonSerializable()
class TaskPerformanceHistory {
  int? taskId;
  DateTime? created;
  String? runTime;

  TaskPerformanceHistory({
    this.taskId,
    this.created,
    this.runTime,
  });

  factory TaskPerformanceHistory.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TaskPerformanceHistoryFromJson(json);

  static List<TaskPerformanceHistory> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => TaskPerformanceHistory.fromJson(value),
          )
          .toList();

  static Map<String, TaskPerformanceHistory> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          TaskPerformanceHistory.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$TaskPerformanceHistoryToJson(this);
}
