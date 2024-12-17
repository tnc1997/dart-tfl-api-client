class NetworkStatus {
  String? operator;
  String? status;
  String? message;
  int? statusLevel;

  NetworkStatus({
    this.operator,
    this.status,
    this.message,
    this.statusLevel,
  });

  factory NetworkStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    return NetworkStatus(
      operator: json['operator'] as String?,
      status: json['status'] as String?,
      message: json['message'] as String?,
      statusLevel: (json['statusLevel'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'operator': operator,
      'status': status,
      'message': message,
      'statusLevel': statusLevel,
    };
  }
}
