import './stop_point.dart';
import '../../internal/serializable.dart';

class RouteSectionNaptanEntrySequence implements Serializable {
  int ordinal;

  StopPoint stopPoint;

  RouteSectionNaptanEntrySequence({
    this.ordinal,
    this.stopPoint,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'ordinal': ordinal,
      'stopPoint': stopPoint,
    };
  }

  @override
  String toString() {
    return 'RouteSectionNaptanEntrySequence[ordinal=$ordinal, stopPoint=$stopPoint, ]';
  }

  RouteSectionNaptanEntrySequence.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    ordinal = json['ordinal'];
    stopPoint = StopPoint.fromJson(json['stopPoint']);
  }

  static List<RouteSectionNaptanEntrySequence> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<RouteSectionNaptanEntrySequence>()
        : json
            .map((value) => RouteSectionNaptanEntrySequence.fromJson(value))
            .toList();
  }

  static Map<String, RouteSectionNaptanEntrySequence> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, RouteSectionNaptanEntrySequence>()
        : json.map((key, value) =>
            MapEntry(key, RouteSectionNaptanEntrySequence.fromJson(value)));
  }
}
