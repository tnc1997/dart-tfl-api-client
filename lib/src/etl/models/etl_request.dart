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
  ) {
    return EtlRequest(
      id: (json['id'] as num?)?.toInt(),
      taskName: json['taskName'] as String?,
      status: json['status'] as String?,
      resultText: json['resultText'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
      started: json['started'] == null
          ? null
          : DateTime.parse(json['started'] as String),
      completed: json['completed'] == null
          ? null
          : DateTime.parse(json['completed'] as String),
      ssisExecutionId: (json['ssisExecutionId'] as num?)?.toInt(),
      subTaskStatus: json['subTaskStatus'] as String?,
      subTaskResult: json['subTaskResult'] as String?,
      createdBy: json['createdBy'] as String?,
      requestType: json['requestType'] as String?,
      expectedCompletionTime: json['expectedCompletionTime'] as String?,
    );
  }

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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'taskName': taskName,
      'status': status,
      'resultText': resultText,
      'created': created?.toIso8601String(),
      'modified': modified?.toIso8601String(),
      'started': started?.toIso8601String(),
      'completed': completed?.toIso8601String(),
      'ssisExecutionId': ssisExecutionId,
      'subTaskStatus': subTaskStatus,
      'subTaskResult': subTaskResult,
      'createdBy': createdBy,
      'requestType': requestType,
      'expectedCompletionTime': expectedCompletionTime,
    };
  }
}
