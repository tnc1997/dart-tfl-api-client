import 'package:json_annotation/json_annotation.dart';

part 'service_status.g.dart';

@JsonSerializable()
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
  ) =>
      _$ServiceStatusFromJson(json);

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

  Map<String, dynamic> toJson() => _$ServiceStatusToJson(this);
}
