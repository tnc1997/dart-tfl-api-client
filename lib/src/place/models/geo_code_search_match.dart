import '../../common/models/search_match.dart';

class GeoCodeSearchMatch extends SearchMatch {
  List<String>? types;
  String? address;

  GeoCodeSearchMatch({
    String? id,
    String? url,
    String? name,
    double? lat,
    double? lon,
    this.types,
    this.address,
  }) : super(
          id: id,
          url: url,
          name: name,
          lat: lat,
          lon: lon,
        );

  factory GeoCodeSearchMatch.fromJson(
    Map<String, dynamic> json,
  ) {
    return GeoCodeSearchMatch(
      id: json['id'] as String?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      address: json['address'] as String?,
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
    };
  }
}
