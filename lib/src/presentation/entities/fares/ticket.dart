import './ticket_time.dart';
import './ticket_type.dart';
import '../message.dart';

class Ticket {
  String passengerType;

  TicketType ticketType;

  TicketTime ticketTime;

  String cost;

  String description;

  String mode;

  int displayOrder;

  List<Message> messages;

  Ticket();

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

  Map<String, dynamic> toJson() {
    return {
      'passengerType': passengerType,
      'ticketType': ticketType,
      'ticketTime': ticketTime,
      'cost': cost,
      'description': description,
      'mode': mode,
      'displayOrder': displayOrder,
      'messages': messages
    };
  }

  static List<Ticket> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Ticket>()
        : json.map((value) => Ticket.fromJson(value)).toList();
  }

  static Map<String, Ticket> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, Ticket>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = Ticket.fromJson(value));
    }
    return map;
  }
}
