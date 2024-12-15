class Coordinate {
  double? longitude;
  double? latitude;
  double? easting;
  double? northing;
  int? xCoord;
  int? yCoord;

  Coordinate({
    this.longitude,
    this.latitude,
    this.easting,
    this.northing,
    this.xCoord,
    this.yCoord,
  });

  factory Coordinate.fromJson(
    Map<String, dynamic> json,
  ) {
    return Coordinate(
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      easting: (json['easting'] as num?)?.toDouble(),
      northing: (json['northing'] as num?)?.toDouble(),
      xCoord: (json['xCoord'] as num?)?.toInt(),
      yCoord: (json['yCoord'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'longitude': longitude,
      'latitude': latitude,
      'easting': easting,
      'northing': northing,
      'xCoord': xCoord,
      'yCoord': yCoord,
    };
  }
}
