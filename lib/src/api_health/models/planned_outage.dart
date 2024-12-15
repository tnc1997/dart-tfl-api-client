import 'service_status.dart';

class PlannedOutage {
  String? id;
  String? apiName;
  DateTime? startDateTime;
  DateTime? endDateTime;
  bool? active;
  String? affectedServicesDisplay;
  List<ServiceStatus>? childServices;

  PlannedOutage({
    this.id,
    this.apiName,
    this.startDateTime,
    this.endDateTime,
    this.active,
    this.affectedServicesDisplay,
    this.childServices,
  });

  factory PlannedOutage.fromJson(
    Map<String, dynamic> json,
  ) {
    return PlannedOutage(
      id: json['id'] as String?,
      apiName: json['apiName'] as String?,
      startDateTime: json['startDateTime'] == null
          ? null
          : DateTime.parse(json['startDateTime'] as String),
      endDateTime: json['endDateTime'] == null
          ? null
          : DateTime.parse(json['endDateTime'] as String),
      active: json['active'] as bool?,
      affectedServicesDisplay: json['affectedServicesDisplay'] as String?,
      childServices: (json['childServices'] as List<dynamic>?)
          ?.map((e) => ServiceStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'apiName': apiName,
      'startDateTime': startDateTime?.toIso8601String(),
      'endDateTime': endDateTime?.toIso8601String(),
      'active': active,
      'affectedServicesDisplay': affectedServicesDisplay,
      'childServices': childServices,
    };
  }
}
