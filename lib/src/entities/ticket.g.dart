// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ticket _$TicketFromJson(Map<String, dynamic> json) {
  return Ticket(
      passengerType: json['passengerType'] as String,
      ticketType: json['ticketType'] == null
          ? null
          : TicketType.fromJson(json['ticketType'] as Map<String, dynamic>),
      ticketTime: json['ticketTime'] == null
          ? null
          : TicketTime.fromJson(json['ticketTime'] as Map<String, dynamic>),
      cost: json['cost'] as String,
      description: json['description'] as String,
      mode: json['mode'] as String,
      displayOrder: json['displayOrder'] as int,
      messages: (json['messages'] as List)
          ?.map((e) =>
              e == null ? null : Message.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$TicketToJson(Ticket instance) => <String, dynamic>{
      'passengerType': instance.passengerType,
      'ticketType': instance.ticketType,
      'ticketTime': instance.ticketTime,
      'cost': instance.cost,
      'description': instance.description,
      'mode': instance.mode,
      'displayOrder': instance.displayOrder,
      'messages': instance.messages
    };
