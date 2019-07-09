class LineRouteSection {
  int routeId;

  String direction;

  String destination;

  String fromStation;

  String toStation;

  String serviceType;

  String vehicleDestinationText;

  LineRouteSection();

  @override
  String toString() {
    return 'LineRouteSection[routeId=$routeId, direction=$direction, destination=$destination, fromStation=$fromStation, toStation=$toStation, serviceType=$serviceType, vehicleDestinationText=$vehicleDestinationText, ]';
  }

  LineRouteSection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    routeId = json['routeId'];
    direction = json['direction'];
    destination = json['destination'];
    fromStation = json['fromStation'];
    toStation = json['toStation'];
    serviceType = json['serviceType'];
    vehicleDestinationText = json['vehicleDestinationText'];
  }

  Map<String, dynamic> toJson() {
    return {
      'routeId': routeId,
      'direction': direction,
      'destination': destination,
      'fromStation': fromStation,
      'toStation': toStation,
      'serviceType': serviceType,
      'vehicleDestinationText': vehicleDestinationText
    };
  }

  static List<LineRouteSection> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<LineRouteSection>()
        : json.map((value) => new LineRouteSection.fromJson(value)).toList();
  }

  static Map<String, LineRouteSection> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LineRouteSection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new LineRouteSection.fromJson(value));
    }
    return map;
  }
}
