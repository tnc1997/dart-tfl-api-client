class Vehicle {
  String type;

  Vehicle();

  @override
  String toString() {
    return 'Vehicle[type=$type, ]';
  }

  Vehicle.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {'type': type};
  }

  static List<Vehicle> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Vehicle>()
        : json.map((value) => Vehicle.fromJson(value)).toList();
  }

  static Map<String, Vehicle> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, Vehicle>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = Vehicle.fromJson(value));
    }
    return map;
  }
}
