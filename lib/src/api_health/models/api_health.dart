import 'service_status.dart';

class ApiHealth {
  String? id;
  String? apiName;
  String? globalApiHealthStatus;
  List<ServiceStatus>? childServices;
  DateTime? startDateTime;
  DateTime? endDateTime;

  ApiHealth({
    this.id,
    this.apiName,
    this.globalApiHealthStatus,
    this.childServices,
    this.startDateTime,
    this.endDateTime,
  });

  factory ApiHealth.fromJson(
    Map<String, dynamic> json,
  ) {
    return ApiHealth(
      id: json['id'] as String?,
      apiName: json['apiName'] as String?,
      globalApiHealthStatus: json['globalApiHealthStatus'] as String?,
      childServices: (json['childServices'] as List<dynamic>?)
          ?.map((e) => ServiceStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
      startDateTime: json['startDateTime'] == null
          ? null
          : DateTime.parse(json['startDateTime'] as String),
      endDateTime: json['endDateTime'] == null
          ? null
          : DateTime.parse(json['endDateTime'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'apiName': apiName,
      'globalApiHealthStatus': globalApiHealthStatus,
      'childServices': childServices,
      'startDateTime': startDateTime?.toIso8601String(),
      'endDateTime': endDateTime?.toIso8601String(),
    };
  }
}
