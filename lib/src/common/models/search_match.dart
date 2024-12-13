class SearchMatch {
  String? id;
  String? url;
  String? name;
  double? lat;
  double? lon;

  SearchMatch({
    this.id,
    this.url,
    this.name,
    this.lat,
    this.lon,
  });

  factory SearchMatch.fromJson(
    Map<String, dynamic> json,
  ) {
    return SearchMatch(
      id: json['id'] as String?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
    );
  }

  static List<SearchMatch> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => SearchMatch.fromJson(value),
          )
          .toList();

  static Map<String, SearchMatch> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          SearchMatch.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'name': name,
      'lat': lat,
      'lon': lon,
    };
  }
}
