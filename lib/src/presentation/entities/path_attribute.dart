class PathAttribute {
  String name;

  String value;

  PathAttribute();

  @override
  String toString() {
    return 'PathAttribute[name=$name, value=$value, ]';
  }

  PathAttribute.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'value': value};
  }

  static List<PathAttribute> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PathAttribute>()
        : json.map((value) => new PathAttribute.fromJson(value)).toList();
  }

  static Map<String, PathAttribute> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PathAttribute>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PathAttribute.fromJson(value));
    }
    return map;
  }
}
