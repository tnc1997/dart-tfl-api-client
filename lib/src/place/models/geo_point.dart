class GeoPoint {
  double? lat;
  double? lon;

  GeoPoint({
    this.lat,
    this.lon,
  });

  factory GeoPoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return GeoPoint(
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'lon': lon,
    };
  }
}
