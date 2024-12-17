import '../../common/models/message.dart';
import 'fare_ticket.dart';

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
  List<FareTicket>? ticketsAvailable;
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
  ) {
    return FareDetails(
      boundsId: (json['boundsId'] as num?)?.toInt(),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      mode: json['mode'] as String?,
      passengerType: json['passengerType'] as String?,
      contactlessPaygOnlyFare: json['contactlessPAYGOnlyFare'] as bool?,
      from: json['from'] as String?,
      to: json['to'] as String?,
      fromStation: json['fromStation'] as String?,
      toStation: json['toStation'] as String?,
      via: json['via'] as String?,
      routeCode: json['routeCode'] as String?,
      displayName: json['displayName'] as String?,
      displayOrder: (json['displayOrder'] as num?)?.toInt(),
      routeDescription: json['routeDescription'] as String?,
      validatorInformation: json['validatorInformation'] as String?,
      operator: json['operator'] as String?,
      specialFare: json['specialFare'] as bool?,
      throughFare: json['throughFare'] as bool?,
      isTour: json['isTour'] as bool?,
      ticketsAvailable: (json['ticketsAvailable'] as List<dynamic>?)
          ?.map((e) => FareTicket.fromJson(e as Map<String, dynamic>))
          .toList(),
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'boundsId': boundsId,
      'startDate': startDate?.toIso8601String(),
      'endDate': endDate?.toIso8601String(),
      'mode': mode,
      'passengerType': passengerType,
      'contactlessPAYGOnlyFare': contactlessPaygOnlyFare,
      'from': from,
      'to': to,
      'fromStation': fromStation,
      'toStation': toStation,
      'via': via,
      'routeCode': routeCode,
      'displayName': displayName,
      'displayOrder': displayOrder,
      'routeDescription': routeDescription,
      'validatorInformation': validatorInformation,
      'operator': operator,
      'specialFare': specialFare,
      'throughFare': throughFare,
      'isTour': isTour,
      'ticketsAvailable': ticketsAvailable,
      'messages': messages,
    };
  }
}
