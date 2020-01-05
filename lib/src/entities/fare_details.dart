import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/message.dart';
import 'package:tfl_api_client/src/entities/ticket.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'fare_details.g.dart';

@JsonSerializable()
class FareDetails implements Serializable {
  int boundsId;

  DateTime startDate;

  DateTime endDate;

  String mode;

  String passengerType;

  String from;

  String to;

  String fromStation;

  String toStation;

  String via;

  String routeCode;

  String displayName;

  int displayOrder;

  String routeDescription;

  String validatorInformation;

  String operator;

  bool specialFare;

  bool throughFare;

  bool isTour;

  List<Ticket> ticketsAvailable;

  List<Message> messages;

  FareDetails({
    this.boundsId,
    this.startDate,
    this.endDate,
    this.mode,
    this.passengerType,
    this.from,
    this.to,
    this.fromStation,
    this.toStation,
    this.via,
    this.routeCode,
    this.displayName,
    this.displayOrder,
    this.routeDescription,
    this.validatorInformation,
    this.operator,
    this.specialFare,
    this.throughFare,
    this.isTour,
    this.ticketsAvailable,
    this.messages,
  });

  factory FareDetails.fromJson(Map<String, dynamic> json) {
    return _$FareDetailsFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$FareDetailsToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
