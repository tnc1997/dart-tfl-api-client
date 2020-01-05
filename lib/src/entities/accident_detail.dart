import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/casualty.dart';
import 'package:tfl_api_client/src/entities/vehicle.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'accident_detail.g.dart';

@JsonSerializable()
class AccidentDetail implements Serializable {
  int id;

  double lat;

  double lon;

  String location;

  DateTime date;

  String severity;

  String borough;

  List<Casualty> casualties;

  List<Vehicle> vehicles;

  AccidentDetail({
    this.id,
    this.lat,
    this.lon,
    this.location,
    this.date,
    this.severity,
    this.borough,
    this.casualties,
    this.vehicles,
  });

  factory AccidentDetail.fromJson(Map<String, dynamic> json) {
    return _$AccidentDetailFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$AccidentDetailToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
