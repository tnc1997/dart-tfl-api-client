class ServiceStatus {
  String? serviceId;
  String? serviceName;
  bool? isRunning;

  ServiceStatus({
    this.serviceId,
    this.serviceName,
    this.isRunning,
  });

  factory ServiceStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    return ServiceStatus(
      serviceId: json['serviceId'] as String?,
      serviceName: json['serviceName'] as String?,
      isRunning: json['isRunning'] as bool?,
    );
  }

  static List<ServiceStatus> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ServiceStatus.fromJson(value),
          )
          .toList();

  static Map<String, ServiceStatus> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ServiceStatus.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'serviceId': serviceId,
      'serviceName': serviceName,
      'isRunning': isRunning,
    };
  }
}
