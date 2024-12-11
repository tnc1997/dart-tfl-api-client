import 'package:json_annotation/json_annotation.dart';

part 'etl_request.g.dart';

@JsonSerializable()
class EtlRequest {
  int? id;
  String? taskName;
  String? status;
  String? resultText;
  DateTime? created;
  DateTime? modified;
  DateTime? started;
  DateTime? completed;
  int? ssisExecutionId;
  String? subTaskStatus;
  String? subTaskResult;
  String? createdBy;
  String? requestType;
  String? expectedCompletionTime;

  EtlRequest({
    this.id,
    this.taskName,
    this.status,
    this.resultText,
    this.created,
    this.modified,
    this.started,
    this.completed,
    this.ssisExecutionId,
    this.subTaskStatus,
    this.subTaskResult,
    this.createdBy,
    this.requestType,
    this.expectedCompletionTime,
  });

  factory EtlRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$EtlRequestFromJson(json);

  static List<EtlRequest> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => EtlRequest.fromJson(value),
          )
          .toList();

  static Map<String, EtlRequest> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          EtlRequest.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$EtlRequestToJson(this);
}
