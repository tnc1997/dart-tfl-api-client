import '../identifier.dart';
import '../../../internal/serializable.dart';

class RouteOption implements Serializable {
  String id;

  String name;

  List<String> directions;

  Identifier lineIdentifier;

  RouteOption({
    this.id,
    this.name,
    this.directions,
    this.lineIdentifier,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'directions': directions,
      'lineIdentifier': lineIdentifier,
    };
  }

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

  static List<RouteOption> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<RouteOption>()
        : json.map((value) => RouteOption.fromJson(value)).toList();
  }

  static Map<String, RouteOption> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, RouteOption>()
        : json.map((key, value) => MapEntry(key, RouteOption.fromJson(value)));
  }
}
