class LineServiceTypeInfo {
  String name;

  String uri;

  LineServiceTypeInfo();

  @override
  String toString() {
    return 'LineServiceTypeInfo[name=$name, uri=$uri, ]';
  }

  LineServiceTypeInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'uri': uri};
  }

  static List<LineServiceTypeInfo> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<LineServiceTypeInfo>()
        : json.map((value) => new LineServiceTypeInfo.fromJson(value)).toList();
  }

  static Map<String, LineServiceTypeInfo> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LineServiceTypeInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new LineServiceTypeInfo.fromJson(value));
    }
    return map;
  }
}
