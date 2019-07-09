class GeoCodeSearchMatch {
  List<String> types;

  String address;

  String id;

  String url;

  String name;

  double lat;

  double lon;

  GeoCodeSearchMatch();

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

  Map<String, dynamic> toJson() {
    return {
      'types': types,
      'address': address,
      'id': id,
      'url': url,
      'name': name,
      'lat': lat,
      'lon': lon
    };
  }

  static List<GeoCodeSearchMatch> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<GeoCodeSearchMatch>()
        : json.map((value) => new GeoCodeSearchMatch.fromJson(value)).toList();
  }

  static Map<String, GeoCodeSearchMatch> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GeoCodeSearchMatch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new GeoCodeSearchMatch.fromJson(value));
    }
    return map;
  }
}
