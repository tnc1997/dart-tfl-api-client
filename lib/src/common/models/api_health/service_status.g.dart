// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceStatus _$ServiceStatusFromJson(Map<String, dynamic> json) {
  return ServiceStatus(
    serviceId: json['serviceId'] as String?,
    serviceName: json['serviceName'] as String?,
    isRunning: json['isRunning'] as bool?,
  );
}

Map<String, dynamic> _$ServiceStatusToJson(ServiceStatus instance) =>
    <String, dynamic>{
      'serviceId': instance.serviceId,
      'serviceName': instance.serviceName,
      'isRunning': instance.isRunning,
    };
