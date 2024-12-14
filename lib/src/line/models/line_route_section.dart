class LineRouteSection {
  int? routeId;
  String? direction;
  String? destination;
  String? fromStation;
  String? toStation;
  String? serviceType;
  String? vehicleDestinationText;

  LineRouteSection({
    this.routeId,
    this.direction,
    this.destination,
    this.fromStation,
    this.toStation,
    this.serviceType,
    this.vehicleDestinationText,
  });

  factory LineRouteSection.fromJson(
    Map<String, dynamic> json,
  ) {
    return LineRouteSection(
      routeId: (json['routeId'] as num?)?.toInt(),
      direction: json['direction'] as String?,
      destination: json['destination'] as String?,
      fromStation: json['fromStation'] as String?,
      toStation: json['toStation'] as String?,
      serviceType: json['serviceType'] as String?,
      vehicleDestinationText: json['vehicleDestinationText'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'routeId': routeId,
      'direction': direction,
      'destination': destination,
      'fromStation': fromStation,
      'toStation': toStation,
      'serviceType': serviceType,
      'vehicleDestinationText': vehicleDestinationText,
    };
  }
}
