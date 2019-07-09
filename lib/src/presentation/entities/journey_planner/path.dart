import '../identifier.dart';
import '../../../common/journey_planner/elevation.dart';

class Path {
  String lineString;

  List<Identifier> stopPoints;

  List<Elevation> elevation;

  Path();

  @override
  String toString() {
    return 'Path[lineString=$lineString, stopPoints=$stopPoints, elevation=$elevation, ]';
  }

  Path.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lineString = json['lineString'];
    stopPoints = Identifier.listFromJson(json['stopPoints']);
    elevation = Elevation.listFromJson(json['elevation']);
  }

  Map<String, dynamic> toJson() {
    return {
      'lineString': lineString,
      'stopPoints': stopPoints,
      'elevation': elevation
    };
  }

  static List<Path> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Path>()
        : json.map((value) => new Path.fromJson(value)).toList();
  }

  static Map<String, Path> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Path>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Path.fromJson(value));
    }
    return map;
  }
}
