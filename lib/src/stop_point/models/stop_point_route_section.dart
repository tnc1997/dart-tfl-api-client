class StopPointRouteSection {
  String? naptanId;
  String? lineId;
  String? mode;
  DateTime? validFrom;
  DateTime? validTo;
  String? direction;
  String? routeSectionName;
  String? lineString;
  bool? isActive;
  String? serviceType;
  String? vehicleDestinationText;
  String? destinationName;

  StopPointRouteSection({
    this.naptanId,
    this.lineId,
    this.mode,
    this.validFrom,
    this.validTo,
    this.direction,
    this.routeSectionName,
    this.lineString,
    this.isActive,
    this.serviceType,
    this.vehicleDestinationText,
    this.destinationName,
  });

  factory StopPointRouteSection.fromJson(
    Map<String, dynamic> json,
  ) {
    return StopPointRouteSection(
      naptanId: json['naptanId'] as String?,
      lineId: json['lineId'] as String?,
      mode: json['mode'] as String?,
      validFrom: json['validFrom'] == null
          ? null
          : DateTime.parse(json['validFrom'] as String),
      validTo: json['validTo'] == null
          ? null
          : DateTime.parse(json['validTo'] as String),
      direction: json['direction'] as String?,
      routeSectionName: json['routeSectionName'] as String?,
      lineString: json['lineString'] as String?,
      isActive: json['isActive'] as bool?,
      serviceType: json['serviceType'] as String?,
      vehicleDestinationText: json['vehicleDestinationText'] as String?,
      destinationName: json['destinationName'] as String?,
    );
  }

  static List<StopPointRouteSection> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => StopPointRouteSection.fromJson(value),
          )
          .toList();

  static Map<String, StopPointRouteSection> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          StopPointRouteSection.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'naptanId': naptanId,
      'lineId': lineId,
      'mode': mode,
      'validFrom': validFrom?.toIso8601String(),
      'validTo': validTo?.toIso8601String(),
      'direction': direction,
      'routeSectionName': routeSectionName,
      'lineString': lineString,
      'isActive': isActive,
      'serviceType': serviceType,
      'vehicleDestinationText': vehicleDestinationText,
      'destinationName': destinationName,
    };
  }
}
