import '../../../internal/serializable.dart';

class Vehicle implements Serializable {
  String type;

  Vehicle({
    this.type,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
    };
  }

  @override
  String toString() {
    return 'Vehicle[type=$type, ]';
  }

  Vehicle.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    type = json['type'];
  }

  static List<Vehicle> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Vehicle>()
        : json.map((value) => Vehicle.fromJson(value)).toList();
  }

  static Map<String, Vehicle> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Vehicle>()
        : json.map((key, value) => MapEntry(key, Vehicle.fromJson(value)));
  }
}
