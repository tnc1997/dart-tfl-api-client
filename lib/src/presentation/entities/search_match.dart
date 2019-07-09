class SearchMatch {
  String id;

  String url;

  String name;

  double lat;

  double lon;

  SearchMatch();

  @override
  String toString() {
    return 'SearchMatch[id=$id, url=$url, name=$name, lat=$lat, lon=$lon, ]';
  }

  SearchMatch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    url = json['url'];
    name = json['name'];
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'url': url, 'name': name, 'lat': lat, 'lon': lon};
  }

  static List<SearchMatch> listFromJson(List<dynamic> json) {
    return json == null
        ? List<SearchMatch>()
        : json.map((value) => SearchMatch.fromJson(value)).toList();
  }

  static Map<String, SearchMatch> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, SearchMatch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = SearchMatch.fromJson(value));
    }
    return map;
  }
}
