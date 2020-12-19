// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planned_outage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlannedOutage _$PlannedOutageFromJson(Map<String, dynamic> json) {
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

Map<String, dynamic> _$PlannedOutageToJson(PlannedOutage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'apiName': instance.apiName,
      'startDateTime': instance.startDateTime?.toIso8601String(),
      'endDateTime': instance.endDateTime?.toIso8601String(),
      'active': instance.active,
      'affectedServicesDisplay': instance.affectedServicesDisplay,
      'childServices': instance.childServices,
    };
