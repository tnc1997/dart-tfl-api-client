import './stop_point.dart';

class RouteSectionNaptanEntrySequence {
  int ordinal;

  StopPoint stopPoint;

  RouteSectionNaptanEntrySequence();

  @override
  String toString() {
    return 'RouteSectionNaptanEntrySequence[ordinal=$ordinal, stopPoint=$stopPoint, ]';
  }

  RouteSectionNaptanEntrySequence.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ordinal = json['ordinal'];
    stopPoint = new StopPoint.fromJson(json['stopPoint']);
  }

  Map<String, dynamic> toJson() {
    return {'ordinal': ordinal, 'stopPoint': stopPoint};
  }

  static List<RouteSectionNaptanEntrySequence> listFromJson(
      List<dynamic> json) {
    return json == null
        ? new List<RouteSectionNaptanEntrySequence>()
        : json
            .map((value) => new RouteSectionNaptanEntrySequence.fromJson(value))
            .toList();
  }

  static Map<String, RouteSectionNaptanEntrySequence> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RouteSectionNaptanEntrySequence>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new RouteSectionNaptanEntrySequence.fromJson(value));
    }
    return map;
  }
}
