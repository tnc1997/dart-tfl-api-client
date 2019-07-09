import '../../internal/serializable.dart';

class GeoCodeSearchMatch implements Serializable {
  List<String> types;

  String address;

  String id;

  String url;

  String name;

  double lat;

  double lon;

  GeoCodeSearchMatch({
    this.types,
    this.address,
    this.id,
    this.url,
    this.name,
    this.lat,
    this.lon,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'types': types,
      'address': address,
      'id': id,
      'url': url,
      'name': name,
      'lat': lat,
      'lon': lon,
    };
  }

  @override
  String toString() {
    return 'GeoCodeSearchMatch[types=$types, address=$address, id=$id, url=$url, name=$name, lat=$lat, lon=$lon, ]';
  }

  GeoCodeSearchMatch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    types = (json['types'] as List).map((item) => item as String).toList();
    address = json['address'];
    id = json['id'];
    url = json['url'];
    name = json['name'];
    lat = json['lat'];
    lon = json['lon'];
  }

  static List<GeoCodeSearchMatch> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<GeoCodeSearchMatch>()
        : json.map((value) => GeoCodeSearchMatch.fromJson(value)).toList();
  }

  static Map<String, GeoCodeSearchMatch> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, GeoCodeSearchMatch>()
        : json.map(
            (key, value) => MapEntry(key, GeoCodeSearchMatch.fromJson(value)));
  }
}
