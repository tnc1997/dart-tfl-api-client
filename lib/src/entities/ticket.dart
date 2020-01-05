import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/message.dart';
import 'package:tfl_api_client/src/entities/ticket_time.dart';
import 'package:tfl_api_client/src/entities/ticket_type.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'ticket.g.dart';

@JsonSerializable()
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

  factory Ticket.fromJson(Map<String, dynamic> json) {
    return _$TicketFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TicketToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
