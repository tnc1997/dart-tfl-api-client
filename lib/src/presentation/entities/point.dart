import '../../internal/serializable.dart';

class Point implements Serializable {
  /// The WGS84 latitude of the location.
  double lat;

  /// The WGS84 longitude of the location.
  double lon;

  Point({
    this.lat,
    this.lon,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'lon': lon,
    };
  }

  @override
  String toString() {
    return 'Point[lat=$lat, lon=$lon, ]';
  }

  Point.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    lat = json['lat'];
    lon = json['lon'];
  }

  static List<Point> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Point>()
        : json.map((value) => Point.fromJson(value)).toList();
  }

  static Map<String, Point> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Point>()
        : json.map((key, value) => MapEntry(key, Point.fromJson(value)));
  }
}
