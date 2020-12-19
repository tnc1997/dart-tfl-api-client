import 'package:json_annotation/json_annotation.dart';

part 'vehicle.g.dart';

@JsonSerializable()
class Vehicle {
  String? type;

  Vehicle({
    this.type,
  });

  factory Vehicle.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$VehicleFromJson(json);

  static List<Vehicle> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Vehicle.fromJson(value),
          )
          .toList();

  static Map<String, Vehicle> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Vehicle.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$VehicleToJson(this);
}
