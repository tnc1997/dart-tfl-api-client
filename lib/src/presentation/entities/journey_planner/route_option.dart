import '../identifier.dart';

class RouteOption {
  String id;

  String name;

  List<String> directions;

  Identifier lineIdentifier;

  RouteOption();

  @override
  String toString() {
    return 'RouteOption[id=$id, name=$name, directions=$directions, lineIdentifier=$lineIdentifier, ]';
  }

  RouteOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    directions =
        (json['directions'] as List).map((item) => item as String).toList();
    lineIdentifier = Identifier.fromJson(json['lineIdentifier']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'directions': directions,
      'lineIdentifier': lineIdentifier
    };
  }

  static List<RouteOption> listFromJson(List<dynamic> json) {
    return json == null
        ? List<RouteOption>()
        : json.map((value) => RouteOption.fromJson(value)).toList();
  }

  static Map<String, RouteOption> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, RouteOption>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = RouteOption.fromJson(value));
    }
    return map;
  }
}
