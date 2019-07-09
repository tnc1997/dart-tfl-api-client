class Elevation {
  int distance;
  double startLat;
  double startLon;
  double endLat;
  double endLon;
  int heightFromPreviousPoint;
  double gradient;

  Elevation();

  @override
  String toString() {
    return 'JpElevation[distance=$distance, startLat=$startLat, startLon=$startLon, endLat=$endLat, endLon=$endLon, heightFromPreviousPoint=$heightFromPreviousPoint, gradient=$gradient, ]';
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

  Map<String, dynamic> toJson() {
    return {
      'distance': distance,
      'startLat': startLat,
      'startLon': startLon,
      'endLat': endLat,
      'endLon': endLon,
      'heightFromPreviousPoint': heightFromPreviousPoint,
      'gradient': gradient
    };
  }

  static List<Elevation> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Elevation>()
        : json
            .map((value) => new Elevation.fromJson(value))
            .toList();
  }

  static Map<String, Elevation> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Elevation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Elevation.fromJson(value));
    }
    return map;
  }
}
