import '../../common/models/search_match.dart';
import 'geo_point_b_box.dart';

class PlaceSearchMatch extends SearchMatch {
  List<String>? types;
  String? address;
  String? icon;
  GeoPointBBox? boundingBox;

  PlaceSearchMatch({
    String? id,
    String? url,
    String? name,
    double? lat,
    double? lon,
    this.types,
    this.address,
    this.icon,
    this.boundingBox,
  }) : super(
          id: id,
          url: url,
          name: name,
          lat: lat,
          lon: lon,
        );

  factory PlaceSearchMatch.fromJson(
    Map<String, dynamic> json,
  ) {
    return PlaceSearchMatch(
      id: json['id'] as String?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      address: json['address'] as String?,
      icon: json['icon'] as String?,
      boundingBox: json['boundingBox'] == null
          ? null
          : GeoPointBBox.fromJson(json['boundingBox'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'name': name,
      'lat': lat,
      'lon': lon,
      'types': types,
      'address': address,
      'icon': icon,
      'boundingBox': boundingBox,
    };
  }
}
