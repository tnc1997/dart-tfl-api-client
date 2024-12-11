import 'package:json_annotation/json_annotation.dart';

import 'bay.dart';

part 'car_park_occupancy.g.dart';

@JsonSerializable()
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
  ) =>
      _$CarParkOccupancyFromJson(json);

  static List<CarParkOccupancy> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => CarParkOccupancy.fromJson(value),
          )
          .toList();

  static Map<String, CarParkOccupancy> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          CarParkOccupancy.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$CarParkOccupancyToJson(this);
}
