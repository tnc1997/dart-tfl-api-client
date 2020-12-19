import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/accident_stats/casualty.dart';
import 'package:tfl_api_client/src/models/accident_stats/vehicle.dart';

part 'accident_detail.g.dart';

@JsonSerializable()
class AccidentDetail {
  int? id;
  double? lat;
  double? lon;
  String? location;
  DateTime? date;
  String? severity;
  String? borough;
  List<Casualty>? casualties;
  List<Vehicle>? vehicles;

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

  factory AccidentDetail.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AccidentDetailFromJson(json);

  static List<AccidentDetail> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => AccidentDetail.fromJson(value),
          )
          .toList();

  static Map<String, AccidentDetail> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          AccidentDetail.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$AccidentDetailToJson(this);
}
