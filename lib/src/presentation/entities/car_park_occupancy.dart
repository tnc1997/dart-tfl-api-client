import './bay.dart';
import '../../internal/serializable.dart';

class CarParkOccupancy implements Serializable {
  String id;

  List<Bay> bays;

  String name;

  String carParkDetailsUrl;

  CarParkOccupancy({
    this.id,
    this.bays,
    this.name,
    this.carParkDetailsUrl,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'bays': bays,
      'name': name,
      'carParkDetailsUrl': carParkDetailsUrl,
    };
  }

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

  static List<CarParkOccupancy> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<CarParkOccupancy>()
        : json.map((value) => CarParkOccupancy.fromJson(value)).toList();
  }

  static Map<String, CarParkOccupancy> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, CarParkOccupancy>()
        : json.map(
            (key, value) => MapEntry(key, CarParkOccupancy.fromJson(value)));
  }
}
