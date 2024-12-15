import 'geo_point.dart';

class PlacePolygon {
  List<GeoPoint>? geoPoints;
  String? commonName;

  PlacePolygon({
    this.geoPoints,
    this.commonName,
  });

  factory PlacePolygon.fromJson(
    Map<String, dynamic> json,
  ) {
    return PlacePolygon(
      geoPoints: (json['geoPoints'] as List<dynamic>?)
          ?.map((e) => GeoPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      commonName: json['commonName'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'geoPoints': geoPoints,
      'commonName': commonName,
    };
  }
}
