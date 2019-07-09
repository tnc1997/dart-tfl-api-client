import '../../internal/serializable.dart';

class Redirect implements Serializable {
  String shortUrl;

  String longUrl;

  bool active;

  Redirect({
    this.shortUrl,
    this.longUrl,
    this.active,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'shortUrl': shortUrl,
      'longUrl': longUrl,
      'active': active,
    };
  }

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

  static List<Redirect> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Redirect>()
        : json.map((value) => Redirect.fromJson(value)).toList();
  }

  static Map<String, Redirect> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Redirect>()
        : json.map((key, value) => MapEntry(key, Redirect.fromJson(value)));
  }
}
