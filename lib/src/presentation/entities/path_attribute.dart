import '../../internal/serializable.dart';

class PathAttribute implements Serializable {
  String name;

  String value;

  PathAttribute({
    this.name,
    this.value,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value,
    };
  }

  @override
  String toString() {
    return 'PathAttribute[name=$name, value=$value, ]';
  }

  PathAttribute.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    name = json['name'];
    value = json['value'];
  }

  static List<PathAttribute> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<PathAttribute>()
        : json.map((value) => PathAttribute.fromJson(value)).toList();
  }

  static Map<String, PathAttribute> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, PathAttribute>()
        : json
            .map((key, value) => MapEntry(key, PathAttribute.fromJson(value)));
  }
}
