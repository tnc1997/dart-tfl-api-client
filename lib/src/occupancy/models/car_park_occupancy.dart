import 'bay.dart';

class CarParkOccupancy {
  String? id;
  List<Bay>? bays;
  String? name;
  String? carParkDetailsUrl;

  CarParkOccupancy({
    this.id,
    this.bays,
    this.name,
    this.carParkDetailsUrl,
  });

  factory CarParkOccupancy.fromJson(
    Map<String, dynamic> json,
  ) {
    return CarParkOccupancy(
      id: json['id'] as String?,
      bays: (json['bays'] as List<dynamic>?)
          ?.map((e) => Bay.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      carParkDetailsUrl: json['carParkDetailsUrl'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'bays': bays,
      'name': name,
      'carParkDetailsUrl': carParkDetailsUrl,
    };
  }
}
