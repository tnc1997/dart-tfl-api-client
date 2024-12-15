class EtlSubTaskMessage {
  int? operationMessageId;
  String? packagePath;
  String? message;
  DateTime? messageTime;
  String? messageType;
  String? messageSourceType;

  EtlSubTaskMessage({
    this.operationMessageId,
    this.packagePath,
    this.message,
    this.messageTime,
    this.messageType,
    this.messageSourceType,
  });

  factory EtlSubTaskMessage.fromJson(
    Map<String, dynamic> json,
  ) {
    return EtlSubTaskMessage(
      operationMessageId: (json['operationMessageId'] as num?)?.toInt(),
      packagePath: json['packagePath'] as String?,
      message: json['message'] as String?,
      messageTime: json['messageTime'] == null
          ? null
          : DateTime.parse(json['messageTime'] as String),
      messageType: json['messageType'] as String?,
      messageSourceType: json['messageSourceType'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'operationMessageId': operationMessageId,
      'packagePath': packagePath,
      'message': message,
      'messageTime': messageTime?.toIso8601String(),
      'messageType': messageType,
      'messageSourceType': messageSourceType,
    };
  }
}
