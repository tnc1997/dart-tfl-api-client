import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'bay.dart';

part 'car_park_occupancy.g.dart';

@JsonSerializable()
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

  factory CarParkOccupancy.fromJson(Map<String, dynamic> json) {
    return _$CarParkOccupancyFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$CarParkOccupancyToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
