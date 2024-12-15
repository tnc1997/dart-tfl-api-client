class WebCatLocationInformation {
  double? lat;
  double? lon;
  String? borough;
  bool? insideGla;
  double? easting;
  double? northing;
  String? address;
  String? name;
  String? placeId;

  WebCatLocationInformation({
    this.lat,
    this.lon,
    this.borough,
    this.insideGla,
    this.easting,
    this.northing,
    this.address,
    this.name,
    this.placeId,
  });

  factory WebCatLocationInformation.fromJson(
    Map<String, dynamic> json,
  ) {
    return WebCatLocationInformation(
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      borough: json['borough'] as String?,
      insideGla: json['insideGla'] as bool?,
      easting: (json['easting'] as num?)?.toDouble(),
      northing: (json['northing'] as num?)?.toDouble(),
      address: json['address'] as String?,
      name: json['name'] as String?,
      placeId: json['placeId'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'lon': lon,
      'borough': borough,
      'insideGla': insideGla,
      'easting': easting,
      'northing': northing,
      'address': address,
      'name': name,
      'placeId': placeId,
    };
  }
}
