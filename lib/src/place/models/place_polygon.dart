class PlacePolygon {
  List<Object>? geoPoints;
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
          ?.map((e) => e as Object)
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
