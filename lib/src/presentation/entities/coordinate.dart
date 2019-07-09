import '../../internal/serializable.dart';

class Coordinate implements Serializable {
  double longitude;

  double latitude;

  double easting;

  double northing;

  int xCoord;

  int yCoord;

  Coordinate({
    this.longitude,
    this.latitude,
    this.easting,
    this.northing,
    this.xCoord,
    this.yCoord,
  });

  @override
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

  static List<Coordinate> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Coordinate>()
        : json.map((value) => Coordinate.fromJson(value)).toList();
  }

  static Map<String, Coordinate> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Coordinate>()
        : json.map((key, value) => MapEntry(key, Coordinate.fromJson(value)));
  }
}
