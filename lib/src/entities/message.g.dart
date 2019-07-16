// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message(
      bulletOrder: json['bulletOrder'] as int,
      header: json['header'] as bool,
      messageText: json['messageText'] as String,
      linkText: json['linkText'] as String,
      url: json['url'] as String);
}

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'bulletOrder': instance.bulletOrder,
      'header': instance.header,
      'messageText': instance.messageText,
      'linkText': instance.linkText,
      'url': instance.url
    };
