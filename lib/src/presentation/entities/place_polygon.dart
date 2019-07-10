import '../../common/geo_point.dart';
import '../../internal/serializable.dart';

class PlacePolygon implements Serializable {
  List<GeoPoint> geoPoints;

  String commonName;

  PlacePolygon({
    this.geoPoints,
    this.commonName,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'geoPoints': geoPoints,
      'commonName': commonName,
    };
  }

  @override
  String toString() {
    return 'PlacePolygon[geoPoints=$geoPoints, commonName=$commonName]';
  }

  PlacePolygon.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    geoPoints = GeoPoint.listFromJson(json['geoPoints']);
    commonName = json['commonName'];
  }

  static List<PlacePolygon> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<PlacePolygon>()
        : json.map((value) => PlacePolygon.fromJson(value)).toList();
  }

  static Map<String, PlacePolygon> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, PlacePolygon>()
        : json.map((key, value) => MapEntry(key, PlacePolygon.fromJson(value)));
  }
}
