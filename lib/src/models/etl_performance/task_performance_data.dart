import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/etl_performance/failed_task.dart';
import 'package:tfl_api_client/src/models/etl_performance/task_performance.dart';
import 'package:tfl_api_client/src/models/etl_performance/task_performance_history.dart';

part 'task_performance_data.g.dart';

@JsonSerializable()
class TaskPerformanceData {
  List<FailedTask>? failedTasks;
  List<TaskPerformance>? taskPerformance;
  Map<int, List<TaskPerformanceHistory>>? taskPerformanceHistory;

  TaskPerformanceData({
    this.failedTasks,
    this.taskPerformance,
    this.taskPerformanceHistory,
  });

  factory TaskPerformanceData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TaskPerformanceDataFromJson(json);

  static List<TaskPerformanceData> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => TaskPerformanceData.fromJson(value),
          )
          .toList();

  static Map<String, TaskPerformanceData> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          TaskPerformanceData.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$TaskPerformanceDataToJson(this);
}
