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
  ) {
    return TaskPerformanceHistory(
      taskId: (json['taskId'] as num?)?.toInt(),
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      runTime: json['runTime'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'taskId': taskId,
      'created': created?.toIso8601String(),
      'runTime': runTime,
    };
  }
}
