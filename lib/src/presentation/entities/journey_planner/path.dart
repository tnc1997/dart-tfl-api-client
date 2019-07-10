import '../identifier.dart';
import '../../../common/journey_planner/elevation.dart';
import '../../../internal/serializable.dart';

class Path implements Serializable {
  String lineString;

  List<Identifier> stopPoints;

  List<Elevation> elevation;

  Path({
    this.lineString,
    this.stopPoints,
    this.elevation,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'lineString': lineString,
      'stopPoints': stopPoints,
      'elevation': elevation,
    };
  }

  @override
  String toString() {
    return 'Path[lineString=$lineString, stopPoints=$stopPoints, elevation=$elevation]';
  }

  Path.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    lineString = json['lineString'];
    stopPoints = Identifier.listFromJson(json['stopPoints']);
    elevation = Elevation.listFromJson(json['elevation']);
  }

  static List<Path> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Path>()
        : json.map((value) => Path.fromJson(value)).toList();
  }

  static Map<String, Path> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Path>()
        : json.map((key, value) => MapEntry(key, Path.fromJson(value)));
  }
}
