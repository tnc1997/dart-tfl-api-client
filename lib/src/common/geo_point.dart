class GeoPoint {
  double lat;

  double lon;

  GeoPoint();

  @override
  String toString() {
    return 'GeoPoint[lat=$lat, lon=$lon, ]';
  }

  GeoPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() {
    return {'lat': lat, 'lon': lon};
  }

  static List<GeoPoint> listFromJson(List<dynamic> json) {
    return json == null
        ? List<GeoPoint>()
        : json.map((value) => GeoPoint.fromJson(value)).toList();
  }

  static Map<String, GeoPoint> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, GeoPoint>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = GeoPoint.fromJson(value));
    }
    return map;
  }
}
