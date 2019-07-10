import '../../internal/serializable.dart';

class SearchMatch implements Serializable {
  String id;

  String url;

  String name;

  double lat;

  double lon;

  SearchMatch({
    this.id,
    this.url,
    this.name,
    this.lat,
    this.lon,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'name': name,
      'lat': lat,
      'lon': lon,
    };
  }

  @override
  String toString() {
    return 'SearchMatch[id=$id, url=$url, name=$name, lat=$lat, lon=$lon]';
  }

  SearchMatch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    id = json['id'];
    url = json['url'];
    name = json['name'];
    lat = json['lat'];
    lon = json['lon'];
  }

  static List<SearchMatch> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<SearchMatch>()
        : json.map((value) => SearchMatch.fromJson(value)).toList();
  }

  static Map<String, SearchMatch> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, SearchMatch>()
        : json.map((key, value) => MapEntry(key, SearchMatch.fromJson(value)));
  }
}
