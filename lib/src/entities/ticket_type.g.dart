// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketType _$TicketTypeFromJson(Map<String, dynamic> json) {
  return TicketType(
      type: json['type'] as String, description: json['description'] as String);
}

Map<String, dynamic> _$TicketTypeToJson(TicketType instance) =>
    <String, dynamic>{
      'type': instance.type,
      'description': instance.description
    };
