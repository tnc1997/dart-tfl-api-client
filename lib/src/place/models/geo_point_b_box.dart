class GeoPointBBox {
  double? neLat;
  double? neLon;
  double? swLat;
  double? swLon;

  GeoPointBBox({
    this.neLat,
    this.neLon,
    this.swLat,
    this.swLon,
  });

  factory GeoPointBBox.fromJson(
    Map<String, dynamic> json,
  ) {
    return GeoPointBBox(
      neLat: (json['neLat'] as num?)?.toDouble(),
      neLon: (json['neLon'] as num?)?.toDouble(),
      swLat: (json['swLat'] as num?)?.toDouble(),
      swLon: (json['swLon'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'neLat': neLat,
      'neLon': neLon,
      'swLat': swLat,
      'swLon': swLon,
    };
  }
}
