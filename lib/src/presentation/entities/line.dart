import './crowding.dart';
import './disruption.dart';
import './line_service_type_info.dart';
import './line_status.dart';
import './matched_route.dart';
import '../../internal/serializable.dart';

class Line implements Serializable {
  String id;

  String name;

  String modeName;

  List<Disruption> disruptions;

  DateTime created;

  DateTime modified;

  List<LineStatus> lineStatuses;

  List<MatchedRoute> routeSections;

  List<LineServiceTypeInfo> serviceTypes;

  Crowding crowding;

  Line({
    this.id,
    this.name,
    this.modeName,
    this.disruptions,
    this.created,
    this.modified,
    this.lineStatuses,
    this.routeSections,
    this.serviceTypes,
    this.crowding,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'modeName': modeName,
      'disruptions': disruptions,
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'modified': modified == null ? '' : modified.toUtc().toIso8601String(),
      'lineStatuses': lineStatuses,
      'routeSections': routeSections,
      'serviceTypes': serviceTypes,
      'crowding': crowding,
    };
  }

  @override
  String toString() {
    return 'Line[id=$id, name=$name, modeName=$modeName, disruptions=$disruptions, created=$created, modified=$modified, lineStatuses=$lineStatuses, routeSections=$routeSections, serviceTypes=$serviceTypes, crowding=$crowding, ]';
  }

  Line.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    id = json['id'];
    name = json['name'];
    modeName = json['modeName'];
    disruptions = Disruption.listFromJson(json['disruptions']);
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    modified =
        json['modified'] == null ? null : DateTime.parse(json['modified']);
    lineStatuses = LineStatus.listFromJson(json['lineStatuses']);
    routeSections = MatchedRoute.listFromJson(json['routeSections']);
    serviceTypes = LineServiceTypeInfo.listFromJson(json['serviceTypes']);
    crowding = Crowding.fromJson(json['crowding']);
  }

  static List<Line> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Line>()
        : json.map((value) => Line.fromJson(value)).toList();
  }

  static Map<String, Line> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Line>()
        : json.map((key, value) => MapEntry(key, Line.fromJson(value)));
  }
}
