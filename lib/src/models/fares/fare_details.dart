import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/fares/ticket.dart';
import 'package:tfl_api_client/src/models/message.dart';

part 'fare_details.g.dart';

@JsonSerializable()
class FareDetails {
  int? boundsId;
  DateTime? startDate;
  DateTime? endDate;
  String? mode;
  String? passengerType;
  bool? contactlessPaygOnlyFare;
  String? from;
  String? to;
  String? fromStation;
  String? toStation;
  String? via;
  String? routeCode;
  String? displayName;
  int? displayOrder;
  String? routeDescription;
  String? validatorInformation;
  String? operator;
  bool? specialFare;
  bool? throughFare;
  bool? isTour;
  List<Ticket>? ticketsAvailable;
  List<Message>? messages;

  FareDetails({
    this.boundsId,
    this.startDate,
    this.endDate,
    this.mode,
    this.passengerType,
    this.contactlessPaygOnlyFare,
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

  factory FareDetails.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FareDetailsFromJson(json);

  static List<FareDetails> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => FareDetails.fromJson(value),
          )
          .toList();

  static Map<String, FareDetails> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          FareDetails.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$FareDetailsToJson(this);
}
