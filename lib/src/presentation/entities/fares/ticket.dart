import './ticket_time.dart';
import './ticket_type.dart';
import '../message.dart';
import '../../../internal/serializable.dart';

class Ticket implements Serializable {
  String passengerType;

  TicketType ticketType;

  TicketTime ticketTime;

  String cost;

  String description;

  String mode;

  int displayOrder;

  List<Message> messages;

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

  @override
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

  @override
  String toString() {
    return 'Ticket[passengerType=$passengerType, ticketType=$ticketType, ticketTime=$ticketTime, cost=$cost, description=$description, mode=$mode, displayOrder=$displayOrder, messages=$messages, ]';
  }

  Ticket.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    passengerType = json['passengerType'];
    ticketType = TicketType.fromJson(json['ticketType']);
    ticketTime = TicketTime.fromJson(json['ticketTime']);
    cost = json['cost'];
    description = json['description'];
    mode = json['mode'];
    displayOrder = json['displayOrder'];
    messages = Message.listFromJson(json['messages']);
  }

  static List<Ticket> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Ticket>()
        : json.map((value) => Ticket.fromJson(value)).toList();
  }

  static Map<String, Ticket> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Ticket>()
        : json.map((key, value) => MapEntry(key, Ticket.fromJson(value)));
  }
}
