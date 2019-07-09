class FaresMode {
  int id;

  String name;

  String description;

  FaresMode();

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

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'description': description};
  }

  static List<FaresMode> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FaresMode>()
        : json.map((value) => FaresMode.fromJson(value)).toList();
  }

  static Map<String, FaresMode> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, FaresMode>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = FaresMode.fromJson(value));
    }
    return map;
  }
}
