import 'additional_properties.dart';
import 'identifiable.dart';
import 'identifier.dart';
import 'point.dart';

class Place extends Point implements Identifiable {
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
  ) {
    return Place(
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
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
    );
  }

  @override
  Identifier toIdentifier() {
    return Identifier(
      id: id,
      name: commonName,
      uri: '/place/$id',
      type: 'Place',
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'lon': lon,
      'id': id,
      'url': url,
      'commonName': commonName,
      'distance': distance,
      'placeType': placeType,
      'additionalProperties': additionalProperties,
      'children': children,
      'childrenUrls': childrenUrls,
    };
  }
}
