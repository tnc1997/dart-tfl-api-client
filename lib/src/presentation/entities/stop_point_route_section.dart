class StopPointRouteSection {
  String naptanId;

  String lineId;

  String mode;

  DateTime validFrom;

  DateTime validTo;

  String direction;

  String routeSectionName;

  String lineString;

  bool isActive;

  String serviceType;

  String vehicleDestinationText;

  String destinationName;

  StopPointRouteSection();

  @override
  String toString() {
    return 'StopPointRouteSection[naptanId=$naptanId, lineId=$lineId, mode=$mode, validFrom=$validFrom, validTo=$validTo, direction=$direction, routeSectionName=$routeSectionName, lineString=$lineString, isActive=$isActive, serviceType=$serviceType, vehicleDestinationText=$vehicleDestinationText, destinationName=$destinationName, ]';
  }

  StopPointRouteSection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    naptanId = json['naptanId'];
    lineId = json['lineId'];
    mode = json['mode'];
    validFrom =
        json['validFrom'] == null ? null : DateTime.parse(json['validFrom']);
    validTo = json['validTo'] == null ? null : DateTime.parse(json['validTo']);
    direction = json['direction'];
    routeSectionName = json['routeSectionName'];
    lineString = json['lineString'];
    isActive = json['isActive'];
    serviceType = json['serviceType'];
    vehicleDestinationText = json['vehicleDestinationText'];
    destinationName = json['destinationName'];
  }

  Map<String, dynamic> toJson() {
    return {
      'naptanId': naptanId,
      'lineId': lineId,
      'mode': mode,
      'validFrom': validFrom == null ? '' : validFrom.toUtc().toIso8601String(),
      'validTo': validTo == null ? '' : validTo.toUtc().toIso8601String(),
      'direction': direction,
      'routeSectionName': routeSectionName,
      'lineString': lineString,
      'isActive': isActive,
      'serviceType': serviceType,
      'vehicleDestinationText': vehicleDestinationText,
      'destinationName': destinationName
    };
  }

  static List<StopPointRouteSection> listFromJson(List<dynamic> json) {
    return json == null
        ? List<StopPointRouteSection>()
        : json.map((value) => StopPointRouteSection.fromJson(value)).toList();
  }

  static Map<String, StopPointRouteSection> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, StopPointRouteSection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = StopPointRouteSection.fromJson(value));
    }
    return map;
  }
}
