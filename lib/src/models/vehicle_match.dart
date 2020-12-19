import 'package:json_annotation/json_annotation.dart';

part 'vehicle_match.g.dart';

@JsonSerializable()
class VehicleMatch {
  String? vrm;
  String? type;
  String? make;
  String? model;
  String? colour;
  String? compliance;

  VehicleMatch({
    this.vrm,
    this.type,
    this.make,
    this.model,
    this.colour,
    this.compliance,
  });

  factory VehicleMatch.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$VehicleMatchFromJson(json);

  static List<VehicleMatch> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => VehicleMatch.fromJson(value),
          )
          .toList();

  static Map<String, VehicleMatch> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          VehicleMatch.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$VehicleMatchToJson(this);
}
