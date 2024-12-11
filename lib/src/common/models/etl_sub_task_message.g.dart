// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'etl_sub_task_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EtlSubTaskMessage _$EtlSubTaskMessageFromJson(Map<String, dynamic> json) {
  return EtlSubTaskMessage(
    operationMessageId: json['operationMessageId'] as int?,
    packagePath: json['packagePath'] as String?,
    message: json['message'] as String?,
    messageTime: json['messageTime'] == null
        ? null
        : DateTime.parse(json['messageTime'] as String),
    messageType: json['messageType'] as String?,
    messageSourceType: json['messageSourceType'] as String?,
  );
}

Map<String, dynamic> _$EtlSubTaskMessageToJson(EtlSubTaskMessage instance) =>
    <String, dynamic>{
      'operationMessageId': instance.operationMessageId,
      'packagePath': instance.packagePath,
      'message': instance.message,
      'messageTime': instance.messageTime?.toIso8601String(),
      'messageType': instance.messageType,
      'messageSourceType': instance.messageSourceType,
    };
