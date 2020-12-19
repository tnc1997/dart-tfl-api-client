// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_health.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiHealth _$ApiHealthFromJson(Map<String, dynamic> json) {
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

Map<String, dynamic> _$ApiHealthToJson(ApiHealth instance) => <String, dynamic>{
      'id': instance.id,
      'apiName': instance.apiName,
      'globalApiHealthStatus': instance.globalApiHealthStatus,
      'childServices': instance.childServices,
      'startDateTime': instance.startDateTime?.toIso8601String(),
      'endDateTime': instance.endDateTime?.toIso8601String(),
    };
