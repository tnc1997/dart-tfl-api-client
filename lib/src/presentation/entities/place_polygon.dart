import '../../common/geo_point.dart';

class PlacePolygon {
  List<GeoPoint> geoPoints;

  String commonName;

  PlacePolygon();

  @override
  String toString() {
    return 'PlacePolygon[geoPoints=$geoPoints, commonName=$commonName, ]';
  }

  PlacePolygon.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    geoPoints = GeoPoint.listFromJson(json['geoPoints']);
    commonName = json['commonName'];
  }

  Map<String, dynamic> toJson() {
    return {'geoPoints': geoPoints, 'commonName': commonName};
  }

  static List<PlacePolygon> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PlacePolygon>()
        : json.map((value) => PlacePolygon.fromJson(value)).toList();
  }

  static Map<String, PlacePolygon> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, PlacePolygon>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = PlacePolygon.fromJson(value));
    }
    return map;
  }
}
