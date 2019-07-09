class MatchedRouteSections {
  int id;

  MatchedRouteSections();

  @override
  String toString() {
    return 'MatchedRouteSections[id=$id, ]';
  }

  MatchedRouteSections.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id};
  }

  static List<MatchedRouteSections> listFromJson(List<dynamic> json) {
    return json == null
        ? List<MatchedRouteSections>()
        : json.map((value) => MatchedRouteSections.fromJson(value)).toList();
  }

  static Map<String, MatchedRouteSections> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, MatchedRouteSections>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MatchedRouteSections.fromJson(value));
    }
    return map;
  }
}
