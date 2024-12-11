import 'package:json_annotation/json_annotation.dart';

part 'place_polygon.g.dart';

@JsonSerializable()
class PlacePolygon {
  List<Object>? geoPoints;
  String? commonName;

  PlacePolygon({
    this.geoPoints,
    this.commonName,
  });

  factory PlacePolygon.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PlacePolygonFromJson(json);

  static List<PlacePolygon> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PlacePolygon.fromJson(value),
          )
          .toList();

  static Map<String, PlacePolygon> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PlacePolygon.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PlacePolygonToJson(this);
}
