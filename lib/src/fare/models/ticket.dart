import 'message.dart';
import 'ticket_time.dart';
import 'ticket_type.dart';

class Ticket {
  String? passengerType;
  TicketType? ticketType;
  TicketTime? ticketTime;
  String? cost;
  String? description;
  String? mode;
  int? displayOrder;
  List<Message>? messages;

  Ticket({
    this.passengerType,
    this.ticketType,
    this.ticketTime,
    this.cost,
    this.description,
    this.mode,
    this.displayOrder,
    this.messages,
  });

  factory Ticket.fromJson(
    Map<String, dynamic> json,
  ) {
    return Ticket(
      passengerType: json['passengerType'] as String?,
      ticketType: json['ticketType'] == null
          ? null
          : TicketType.fromJson(json['ticketType'] as Map<String, dynamic>),
      ticketTime: json['ticketTime'] == null
          ? null
          : TicketTime.fromJson(json['ticketTime'] as Map<String, dynamic>),
      cost: json['cost'] as String?,
      description: json['description'] as String?,
      mode: json['mode'] as String?,
      displayOrder: (json['displayOrder'] as num?)?.toInt(),
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'passengerType': passengerType,
      'ticketType': ticketType,
      'ticketTime': ticketTime,
      'cost': cost,
      'description': description,
      'mode': mode,
      'displayOrder': displayOrder,
      'messages': messages,
    };
  }
}
