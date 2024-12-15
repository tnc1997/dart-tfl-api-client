import 'failed_task.dart';
import 'task_performance.dart';
import 'task_performance_history.dart';

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
  ) {
    return TaskPerformanceData(
      failedTasks: (json['failedTasks'] as List<dynamic>?)
          ?.map((e) => FailedTask.fromJson(e as Map<String, dynamic>))
          .toList(),
      taskPerformance: (json['taskPerformance'] as List<dynamic>?)
          ?.map((e) => TaskPerformance.fromJson(e as Map<String, dynamic>))
          .toList(),
      taskPerformanceHistory:
          (json['taskPerformanceHistory'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            int.parse(k),
            (e as List<dynamic>)
                .map((e) =>
                    TaskPerformanceHistory.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'failedTasks': failedTasks,
      'taskPerformance': taskPerformance,
      'taskPerformanceHistory':
          taskPerformanceHistory?.map((k, e) => MapEntry(k.toString(), e)),
    };
  }
}
