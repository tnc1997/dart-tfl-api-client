import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/additional_properties.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'place.g.dart';

@JsonSerializable()
class Place implements Serializable {
  String id;

  /// The unique location of this resource.
  String url;

  /// The human readable name.
  String commonName;

  /// The distance of the place from its search point.
  double distance;

  /// The type of the place.
  String placeType;

  /// The bag of additional key/value pairs with extra information about this place.
  List<AdditionalProperties> additionalProperties;

  List<Place> children;

  List<String> childrenUrls;

  /// The WGS84 latitude of the location.
  double lat;

  /// The WGS84 longitude of the location.
  double lon;

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

  factory Place.fromJson(Map<String, dynamic> json) {
    return _$PlaceFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
