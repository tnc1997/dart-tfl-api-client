// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkStatus _$NetworkStatusFromJson(Map<String, dynamic> json) {
  return NetworkStatus(
    operator: json['operator'] as String?,
    status: json['status'] as String?,
    message: json['message'] as String?,
    statusLevel: json['statusLevel'] as int?,
  );
}

Map<String, dynamic> _$NetworkStatusToJson(NetworkStatus instance) =>
    <String, dynamic>{
      'operator': instance.operator,
      'status': instance.status,
      'message': instance.message,
      'statusLevel': instance.statusLevel,
    };
