import './route_section_naptan_entry_sequence.dart';
import '../../internal/serializable.dart';

class RouteSection implements Serializable {
  String id;

  /// The id of the line.
  String lineId;

  /// The route code.
  String routeCode;

  /// The name.
  String name;

  /// The co-ordinates of the route's path as a GeoJSON string.
  String lineString;

  /// Inbound or Outbound.
  String direction;

  /// The name of the Origin StopPoint.
  String originationName;

  /// The name of the Destination StopPoint.
  String destinationName;

  /// The DateTime that the Service containing this Route is valid until.
  DateTime validTo;

  /// The DateTime that the Service containing this Route is valid from.
  DateTime validFrom;

  List<RouteSectionNaptanEntrySequence> routeSectionNaptanEntrySequence;

  RouteSection({
    this.id,
    this.lineId,
    this.routeCode,
    this.name,
    this.lineString,
    this.direction,
    this.originationName,
    this.destinationName,
    this.validTo,
    this.validFrom,
    this.routeSectionNaptanEntrySequence,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'lineId': lineId,
      'routeCode': routeCode,
      'name': name,
      'lineString': lineString,
      'direction': direction,
      'originationName': originationName,
      'destinationName': destinationName,
      'validTo': validTo == null ? '' : validTo.toUtc().toIso8601String(),
      'validFrom': validFrom == null ? '' : validFrom.toUtc().toIso8601String(),
      'routeSectionNaptanEntrySequence': routeSectionNaptanEntrySequence,
    };
  }

  @override
  String toString() {
    return 'RouteSection[id=$id, lineId=$lineId, routeCode=$routeCode, name=$name, lineString=$lineString, direction=$direction, originationName=$originationName, destinationName=$destinationName, validTo=$validTo, validFrom=$validFrom, routeSectionNaptanEntrySequence=$routeSectionNaptanEntrySequence]';
  }

  RouteSection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    id = json['id'];
    lineId = json['lineId'];
    routeCode = json['routeCode'];
    name = json['name'];
    lineString = json['lineString'];
    direction = json['direction'];
    originationName = json['originationName'];
    destinationName = json['destinationName'];
    validTo = json['validTo'] == null ? null : DateTime.parse(json['validTo']);
    validFrom =
        json['validFrom'] == null ? null : DateTime.parse(json['validFrom']);
    routeSectionNaptanEntrySequence =
        RouteSectionNaptanEntrySequence.listFromJson(
            json['routeSectionNaptanEntrySequence']);
  }

  static List<RouteSection> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<RouteSection>()
        : json.map((value) => RouteSection.fromJson(value)).toList();
  }

  static Map<String, RouteSection> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, RouteSection>()
        : json.map((key, value) => MapEntry(key, RouteSection.fromJson(value)));
  }
}
