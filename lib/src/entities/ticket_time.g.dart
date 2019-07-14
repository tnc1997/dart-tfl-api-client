// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketTime _$TicketTimeFromJson(Map<String, dynamic> json) {
  return TicketTime(
      type: json['type'] as String, description: json['description'] as String);
}

Map<String, dynamic> _$TicketTimeToJson(TicketTime instance) =>
    <String, dynamic>{
      'type': instance.type,
      'description': instance.description
    };
