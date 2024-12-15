class FailedTask {
  String? name;
  DateTime? lastRun;
  String? resultText;
  int? requestId;
  int? ssisExecutionId;
  bool? succeededSinceFailure;
  int? taskId;

  FailedTask({
    this.name,
    this.lastRun,
    this.resultText,
    this.requestId,
    this.ssisExecutionId,
    this.succeededSinceFailure,
    this.taskId,
  });

  factory FailedTask.fromJson(
    Map<String, dynamic> json,
  ) {
    return FailedTask(
      name: json['name'] as String?,
      lastRun: json['lastRun'] == null
          ? null
          : DateTime.parse(json['lastRun'] as String),
      resultText: json['resultText'] as String?,
      requestId: (json['requestId'] as num?)?.toInt(),
      ssisExecutionId: (json['ssisExecutionId'] as num?)?.toInt(),
      succeededSinceFailure: json['succeededSinceFailure'] as bool?,
      taskId: (json['taskId'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'lastRun': lastRun?.toIso8601String(),
        'resultText': resultText,
        'requestId': requestId,
        'ssisExecutionId': ssisExecutionId,
        'succeededSinceFailure': succeededSinceFailure,
        'taskId': taskId,
      };
}
