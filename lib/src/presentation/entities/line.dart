import 'crowding.dart';
import './disruption.dart';
import './line_service_type_info.dart';
import './line_status.dart';
import './matched_route.dart';

class Line {
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

  Line();

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
      'crowding': crowding
    };
  }

  static List<Line> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Line>()
        : json.map((value) => Line.fromJson(value)).toList();
  }

  static Map<String, Line> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = Map<String, Line>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = Line.fromJson(value));
    }
    return map;
  }
}
