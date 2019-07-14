import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'vehicle.g.dart';

@JsonSerializable()
class Vehicle implements Serializable {
  String id;

  String type;

  Vehicle({
    this.id,
    this.type,
  });

  @override
  Map<String, dynamic> toJson() {
    return _$VehicleToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }

  factory Vehicle.fromJson(Map<String, dynamic> json) {
    return _$VehicleFromJson(json);
  }
}
