import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/fares/ticket_time.dart';
import 'package:tfl_api_client/src/models/fares/ticket_type.dart';
import 'package:tfl_api_client/src/models/message.dart';

part 'ticket.g.dart';

@JsonSerializable()
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
  ) =>
      _$TicketFromJson(json);

  static List<Ticket> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Ticket.fromJson(value),
          )
          .toList();

  static Map<String, Ticket> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Ticket.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$TicketToJson(this);
}
