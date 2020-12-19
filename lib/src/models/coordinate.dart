import 'package:json_annotation/json_annotation.dart';

part 'coordinate.g.dart';

@JsonSerializable()
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
  ) =>
      _$CoordinateFromJson(json);

  static List<Coordinate> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Coordinate.fromJson(value),
          )
          .toList();

  static Map<String, Coordinate> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Coordinate.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$CoordinateToJson(this);
}
