import '../internal/serializable.dart';

class GeoPoint implements Serializable {
  double lat;

  double lon;

  GeoPoint({
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
    return 'GeoPoint[lat=$lat, lon=$lon, ]';
  }

  GeoPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    lat = json['lat'];
    lon = json['lon'];
  }

  static List<GeoPoint> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<GeoPoint>()
        : json.map((value) => GeoPoint.fromJson(value)).toList();
  }

  static Map<String, GeoPoint> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, GeoPoint>()
        : json.map((key, value) => MapEntry(key, GeoPoint.fromJson(value)));
  }
}
