class Fare {
  int? id;
  String? passengerType;
  DateTime? validFrom;
  DateTime? validUntil;
  String? ticketTime;
  String? ticketType;
  String? cost;
  double? cap;
  String? description;
  String? zone;
  String? mode;

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

  factory Fare.fromJson(
    Map<String, dynamic> json,
  ) {
    return Fare(
      id: (json['id'] as num?)?.toInt(),
      passengerType: json['passengerType'] as String?,
      validFrom: json['validFrom'] == null
          ? null
          : DateTime.parse(json['validFrom'] as String),
      validUntil: json['validUntil'] == null
          ? null
          : DateTime.parse(json['validUntil'] as String),
      ticketTime: json['ticketTime'] as String?,
      ticketType: json['ticketType'] as String?,
      cost: json['cost'] as String?,
      cap: (json['cap'] as num?)?.toDouble(),
      description: json['description'] as String?,
      zone: json['zone'] as String?,
      mode: json['mode'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'passengerType': passengerType,
      'validFrom': validFrom?.toIso8601String(),
      'validUntil': validUntil?.toIso8601String(),
      'ticketTime': ticketTime,
      'ticketType': ticketType,
      'cost': cost,
      'cap': cap,
      'description': description,
      'zone': zone,
      'mode': mode,
    };
  }
}
