import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/additional_properties.dart';
import 'package:tfl_api_client/src/models/point.dart';

part 'place.g.dart';

@JsonSerializable()
class Place extends Point2 {
  String? id;
  String? url;
  String? commonName;
  double? distance;
  String? placeType;
  List<AdditionalProperties>? additionalProperties;
  List<Place>? children;
  List<String>? childrenUrls;

  Place({
    double? lat,
    double? lon,
    this.id,
    this.url,
    this.commonName,
    this.distance,
    this.placeType,
    this.additionalProperties,
    this.children,
    this.childrenUrls,
  }) : super(
          lat: lat,
          lon: lon,
        );

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

  @override
  Map<String, dynamic> toJson() => _$PlaceToJson(this);
}
