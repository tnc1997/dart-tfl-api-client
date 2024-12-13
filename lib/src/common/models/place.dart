import 'additional_properties.dart';

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
  ) {
    return Place(
      id: json['id'] as String?,
      url: json['url'] as String?,
      commonName: json['commonName'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      placeType: json['placeType'] as String?,
      additionalProperties: (json['additionalProperties'] as List<dynamic>?)
          ?.map((e) => AdditionalProperties.fromJson(e as Map<String, dynamic>))
          .toList(),
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => Place.fromJson(e as Map<String, dynamic>))
          .toList(),
      childrenUrls: (json['childrenUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
    );
  }

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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'commonName': commonName,
      'distance': distance,
      'placeType': placeType,
      'additionalProperties': additionalProperties,
      'children': children,
      'childrenUrls': childrenUrls,
      'lat': lat,
      'lon': lon,
    };
  }
}
