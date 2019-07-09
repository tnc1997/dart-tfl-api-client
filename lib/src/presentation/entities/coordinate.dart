class Coordinate {
  double longitude;

  double latitude;

  double easting;

  double northing;

  int xCoord;

  int yCoord;

  Coordinate();

  @override
  String toString() {
    return 'Coordinate[longitude=$longitude, latitude=$latitude, easting=$easting, northing=$northing, xCoord=$xCoord, yCoord=$yCoord, ]';
  }

  Coordinate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    longitude = json['longitude'];
    latitude = json['latitude'];
    easting = json['easting'];
    northing = json['northing'];
    xCoord = json['xCoord'];
    yCoord = json['yCoord'];
  }

  Map<String, dynamic> toJson() {
    return {
      'longitude': longitude,
      'latitude': latitude,
      'easting': easting,
      'northing': northing,
      'xCoord': xCoord,
      'yCoord': yCoord
    };
  }

  static List<Coordinate> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Coordinate>()
        : json.map((value) => new Coordinate.fromJson(value)).toList();
  }

  static Map<String, Coordinate> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Coordinate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Coordinate.fromJson(value));
    }
    return map;
  }
}
