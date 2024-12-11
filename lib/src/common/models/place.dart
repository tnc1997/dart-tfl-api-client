import 'package:json_annotation/json_annotation.dart';

import 'additional_properties.dart';

part 'place.g.dart';

@JsonSerializable()
class Place {
  String? id;
  String? url;
  String? commonName;
  double? distance;
  String? placeType;
  List<AdditionalProperties>? additionalProperties;
  List<Place>? children;
  List<String>? childrenUrls;
  double? lat;
  double? lon;

  Place({
    this.id,
    this.url,
    this.commonName,
    this.distance,
    this.placeType,
    this.additionalProperties,
    this.children,
    this.childrenUrls,
    this.lat,
    this.lon,
  });

  factory Place.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PlaceFromJson(json);

  static List<Place> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Place.fromJson(value),
          )
          .toList();

  static Map<String, Place> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Place.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PlaceToJson(this);
}
