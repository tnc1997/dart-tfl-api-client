class Redirect {
  String shortUrl;

  String longUrl;

  bool active;

  Redirect();

  @override
  String toString() {
    return 'Redirect[shortUrl=$shortUrl, longUrl=$longUrl, active=$active, ]';
  }

  Redirect.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    shortUrl = json['shortUrl'];
    longUrl = json['longUrl'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    return {'shortUrl': shortUrl, 'longUrl': longUrl, 'active': active};
  }

  static List<Redirect> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Redirect>()
        : json.map((value) => new Redirect.fromJson(value)).toList();
  }

  static Map<String, Redirect> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Redirect>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Redirect.fromJson(value));
    }
    return map;
  }
}
