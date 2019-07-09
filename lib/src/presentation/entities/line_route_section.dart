import '../../internal/serializable.dart';

class LineRouteSection implements Serializable {
  int routeId;

  String direction;

  String destination;

  String fromStation;

  String toStation;

  String serviceType;

  String vehicleDestinationText;

  LineRouteSection({
    this.routeId,
    this.direction,
    this.destination,
    this.fromStation,
    this.toStation,
    this.serviceType,
    this.vehicleDestinationText,
  });

  @override
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

  static List<LineRouteSection> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<LineRouteSection>()
        : json.map((value) => LineRouteSection.fromJson(value)).toList();
  }

  static Map<String, LineRouteSection> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, LineRouteSection>()
        : json.map(
            (key, value) => MapEntry(key, LineRouteSection.fromJson(value)));
  }
}
