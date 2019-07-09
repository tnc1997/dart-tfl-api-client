import '../../../internal/serializable.dart';

class FaresMode implements Serializable {
  int id;

  String name;

  String description;

  FaresMode({
    this.id,
    this.name,
    this.description,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
    };
  }

  @override
  String toString() {
    return 'FaresMode[id=$id, name=$name, description=$description, ]';
  }

  FaresMode.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    id = json['id'];
    name = json['name'];
    description = json['description'];
  }

  static List<FaresMode> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<FaresMode>()
        : json.map((value) => FaresMode.fromJson(value)).toList();
  }

  static Map<String, FaresMode> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, FaresMode>()
        : json.map((key, value) => MapEntry(key, FaresMode.fromJson(value)));
  }
}
