import 'package:json_annotation/json_annotation.dart';

part 'failed_task.g.dart';

@JsonSerializable()
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
  ) =>
      _$FailedTaskFromJson(json);

  static List<FailedTask> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => FailedTask.fromJson(value),
          )
          .toList();

  static Map<String, FailedTask> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          FailedTask.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$FailedTaskToJson(this);
}
