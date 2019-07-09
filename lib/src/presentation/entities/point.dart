class Point {
  /// WGS84 latitude of the location.
  double lat;

  /// WGS84 longitude of the location.
  double lon;

  Point();

  @override
  String toString() {
    return 'Point[lat=$lat, lon=$lon, ]';
  }

  Point.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() {
    return {'lat': lat, 'lon': lon};
  }

  static List<Point> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Point>()
        : json.map((value) => Point.fromJson(value)).toList();
  }

  static Map<String, Point> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, Point>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = Point.fromJson(value));
    }
    return map;
  }
}
