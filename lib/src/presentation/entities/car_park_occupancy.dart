import './bay.dart';

class CarParkOccupancy {
  String id;

  List<Bay> bays;

  String name;

  String carParkDetailsUrl;

  CarParkOccupancy();

  @override
  String toString() {
    return 'CarParkOccupancy[id=$id, bays=$bays, name=$name, carParkDetailsUrl=$carParkDetailsUrl, ]';
  }

  CarParkOccupancy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    bays = Bay.listFromJson(json['bays']);
    name = json['name'];
    carParkDetailsUrl = json['carParkDetailsUrl'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'bays': bays,
      'name': name,
      'carParkDetailsUrl': carParkDetailsUrl
    };
  }

  static List<CarParkOccupancy> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CarParkOccupancy>()
        : json.map((value) => new CarParkOccupancy.fromJson(value)).toList();
  }

  static Map<String, CarParkOccupancy> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CarParkOccupancy>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CarParkOccupancy.fromJson(value));
    }
    return map;
  }
}
