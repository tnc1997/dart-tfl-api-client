class Fare {
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

  Fare();

  @override
  String toString() {
    return 'Fare[id=$id, passengerType=$passengerType, validFrom=$validFrom, validUntil=$validUntil, ticketTime=$ticketTime, ticketType=$ticketType, cost=$cost, cap=$cap, description=$description, zone=$zone, mode=$mode, ]';
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
      'mode': mode
    };
  }

  static List<Fare> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Fare>()
        : json.map((value) => new Fare.fromJson(value)).toList();
  }

  static Map<String, Fare> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Fare>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Fare.fromJson(value));
    }
    return map;
  }
}
