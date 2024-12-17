import '../../common/models/message.dart';
import 'fare_ticket_time.dart';
import 'fare_ticket_type.dart';

class FareTicket {
  String? passengerType;
  FareTicketType? ticketType;
  FareTicketTime? ticketTime;
  String? cost;
  String? description;
  String? mode;
  int? displayOrder;
  List<Message>? messages;

  FareTicket({
    this.passengerType,
    this.ticketType,
    this.ticketTime,
    this.cost,
    this.description,
    this.mode,
    this.displayOrder,
    this.messages,
  });

  factory FareTicket.fromJson(
    Map<String, dynamic> json,
  ) {
    return FareTicket(
      passengerType: json['passengerType'] as String?,
      ticketType: json['ticketType'] == null
          ? null
          : FareTicketType.fromJson(json['ticketType'] as Map<String, dynamic>),
      ticketTime: json['ticketTime'] == null
          ? null
          : FareTicketTime.fromJson(json['ticketTime'] as Map<String, dynamic>),
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
