// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiError _$ApiErrorFromJson(Map<String, dynamic> json) {
  return ApiError(
    timestampUtc: json['timestampUtc'] == null
        ? null
        : DateTime.parse(json['timestampUtc'] as String),
    name: json['name'] as String?,
    exceptionType: json['exceptionType'] as String?,
    httpStatusCode: json['httpStatusCode'] as int?,
    relativeUri: json['relativeUri'] as String?,
    message: json['message'] as String?,
    detailedMessage: json['detailedMessage'] as String?,
  );
}

Map<String, dynamic> _$ApiErrorToJson(ApiError instance) => <String, dynamic>{
      'timestampUtc': instance.timestampUtc?.toIso8601String(),
      'name': instance.name,
      'exceptionType': instance.exceptionType,
      'httpStatusCode': instance.httpStatusCode,
      'relativeUri': instance.relativeUri,
      'message': instance.message,
      'detailedMessage': instance.detailedMessage,
    };
