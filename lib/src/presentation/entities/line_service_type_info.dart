import '../../internal/serializable.dart';

class LineServiceTypeInfo implements Serializable {
  String name;

  String uri;

  LineServiceTypeInfo({
    this.name,
    this.uri,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'uri': uri,
    };
  }

  @override
  String toString() {
    return 'LineServiceTypeInfo[name=$name, uri=$uri]';
  }

  LineServiceTypeInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    name = json['name'];
    uri = json['uri'];
  }

  static List<LineServiceTypeInfo> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<LineServiceTypeInfo>()
        : json.map((value) => LineServiceTypeInfo.fromJson(value)).toList();
  }

  static Map<String, LineServiceTypeInfo> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, LineServiceTypeInfo>()
        : json.map(
            (key, value) => MapEntry(key, LineServiceTypeInfo.fromJson(value)));
  }
}
