import '../../../internal/serializable.dart';

class Fare implements Serializable {
  int id;

  String passengerType;

  DateTime validFrom;

  DateTime validUntil;

  String ticketTime;

  String ticketType;

  String cost;

  double cap;

  String description;

  String zone;

  String mode;

  Fare({
    this.id,
    this.passengerType,
    this.validFrom,
    this.validUntil,
    this.ticketTime,
    this.ticketType,
    this.cost,
    this.cap,
    this.description,
    this.zone,
    this.mode,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'passengerType': passengerType,
      'validFrom': validFrom == null ? '' : validFrom.toUtc().toIso8601String(),
      'validUntil':
          validUntil == null ? '' : validUntil.toUtc().toIso8601String(),
      'ticketTime': ticketTime,
      'ticketType': ticketType,
      'cost': cost,
      'cap': cap,
      'description': description,
      'zone': zone,
      'mode': mode,
    };
  }

  @override
  String toString() {
    return 'Fare[id=$id, passengerType=$passengerType, validFrom=$validFrom, validUntil=$validUntil, ticketTime=$ticketTime, ticketType=$ticketType, cost=$cost, cap=$cap, description=$description, zone=$zone, mode=$mode]';
  }

  Fare.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    id = json['id'];
    passengerType = json['passengerType'];
    validFrom =
        json['validFrom'] == null ? null : DateTime.parse(json['validFrom']);
    validUntil =
        json['validUntil'] == null ? null : DateTime.parse(json['validUntil']);
    ticketTime = json['ticketTime'];
    ticketType = json['ticketType'];
    cost = json['cost'];
    cap = json['cap'];
    description = json['description'];
    zone = json['zone'];
    mode = json['mode'];
  }

  static List<Fare> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Fare>()
        : json.map((value) => Fare.fromJson(value)).toList();
  }

  static Map<String, Fare> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Fare>()
        : json.map((key, value) => MapEntry(key, Fare.fromJson(value)));
  }
}
