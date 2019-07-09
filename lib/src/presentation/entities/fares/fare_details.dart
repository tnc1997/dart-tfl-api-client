import './ticket.dart';
import '../message.dart';

class FareDetails {
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

  FareDetails();

  @override
  String toString() {
    return 'FareDetails[boundsId=$boundsId, startDate=$startDate, endDate=$endDate, mode=$mode, passengerType=$passengerType, from=$from, to=$to, fromStation=$fromStation, toStation=$toStation, via=$via, routeCode=$routeCode, displayName=$displayName, displayOrder=$displayOrder, routeDescription=$routeDescription, validatorInformation=$validatorInformation, operator=$operator, specialFare=$specialFare, throughFare=$throughFare, isTour=$isTour, ticketsAvailable=$ticketsAvailable, messages=$messages, ]';
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
      'messages': messages
    };
  }

  static List<FareDetails> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<FareDetails>()
        : json.map((value) => new FareDetails.fromJson(value)).toList();
  }

  static Map<String, FareDetails> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FareDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new FareDetails.fromJson(value));
    }
    return map;
  }
}
