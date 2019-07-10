import './ticket.dart';
import '../message.dart';
import '../../../internal/serializable.dart';

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

  @override
  Map<String, dynamic> toJson() {
    return {
      'boundsId': boundsId,
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'endDate': endDate == null ? '' : endDate.toUtc().toIso8601String(),
      'mode': mode,
      'passengerType': passengerType,
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

  @override
  String toString() {
    return 'FareDetails[boundsId=$boundsId, startDate=$startDate, endDate=$endDate, mode=$mode, passengerType=$passengerType, from=$from, to=$to, fromStation=$fromStation, toStation=$toStation, via=$via, routeCode=$routeCode, displayName=$displayName, displayOrder=$displayOrder, routeDescription=$routeDescription, validatorInformation=$validatorInformation, operator=$operator, specialFare=$specialFare, throughFare=$throughFare, isTour=$isTour, ticketsAvailable=$ticketsAvailable, messages=$messages]';
  }

  FareDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    boundsId = json['boundsId'];
    startDate =
        json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
    mode = json['mode'];
    passengerType = json['passengerType'];
    from = json['from'];
    to = json['to'];
    fromStation = json['fromStation'];
    toStation = json['toStation'];
    via = json['via'];
    routeCode = json['routeCode'];
    displayName = json['displayName'];
    displayOrder = json['displayOrder'];
    routeDescription = json['routeDescription'];
    validatorInformation = json['validatorInformation'];
    operator = json['operator'];
    specialFare = json['specialFare'];
    throughFare = json['throughFare'];
    isTour = json['isTour'];
    ticketsAvailable = Ticket.listFromJson(json['ticketsAvailable']);
    messages = Message.listFromJson(json['messages']);
  }

  static List<FareDetails> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<FareDetails>()
        : json.map((value) => FareDetails.fromJson(value)).toList();
  }

  static Map<String, FareDetails> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, FareDetails>()
        : json.map((key, value) => MapEntry(key, FareDetails.fromJson(value)));
  }
}
