import 'package:json_annotation/json_annotation.dart';

part 'geo_json_object.g.dart';

@JsonSerializable()
class GeoJsonObject {
  String? type;
  List<Object>? coordinates;

  GeoJsonObject({
    this.type,
    this.coordinates,
  });

  factory GeoJsonObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GeoJsonObjectFromJson(json);

  static List<GeoJsonObject> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => GeoJsonObject.fromJson(value),
          )
          .toList();

  static Map<String, GeoJsonObject> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          GeoJsonObject.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$GeoJsonObjectToJson(this);
}
