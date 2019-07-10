import '../../internal/serializable.dart';

class Elevation implements Serializable {
  int distance;

  double startLat;

  double startLon;

  double endLat;

  double endLon;

  int heightFromPreviousPoint;

  double gradient;

  Elevation({
    this.distance,
    this.startLat,
    this.startLon,
    this.endLat,
    this.endLon,
    this.heightFromPreviousPoint,
    this.gradient,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'distance': distance,
      'startLat': startLat,
      'startLon': startLon,
      'endLat': endLat,
      'endLon': endLon,
      'heightFromPreviousPoint': heightFromPreviousPoint,
      'gradient': gradient,
    };
  }

  @override
  String toString() {
    return 'Elevation[distance=$distance, startLat=$startLat, startLon=$startLon, endLat=$endLat, endLon=$endLon, heightFromPreviousPoint=$heightFromPreviousPoint, gradient=$gradient]';
  }

  Elevation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    distance = json['distance'];
    startLat = json['startLat'];
    startLon = json['startLon'];
    endLat = json['endLat'];
    endLon = json['endLon'];
    heightFromPreviousPoint = json['heightFromPreviousPoint'];
    gradient = json['gradient'];
  }

  static List<Elevation> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Elevation>()
        : json.map((value) => Elevation.fromJson(value)).toList();
  }

  static Map<String, Elevation> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Elevation>()
        : json.map((key, value) => MapEntry(key, Elevation.fromJson(value)));
  }
}
