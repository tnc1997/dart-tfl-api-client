class JourneyVector {
  String from;

  String to;

  String via;

  String uri;

  JourneyVector();

  @override
  String toString() {
    return 'JourneyVector[from=$from, to=$to, via=$via, uri=$uri, ]';
  }

  JourneyVector.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    from = json['from'];
    to = json['to'];
    via = json['via'];
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    return {'from': from, 'to': to, 'via': via, 'uri': uri};
  }

  static List<JourneyVector> listFromJson(List<dynamic> json) {
    return json == null
        ? List<JourneyVector>()
        : json.map((value) => JourneyVector.fromJson(value)).toList();
  }

  static Map<String, JourneyVector> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, JourneyVector>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = JourneyVector.fromJson(value));
    }
    return map;
  }
}
