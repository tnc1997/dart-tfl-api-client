import 'package:json_annotation/json_annotation.dart';

part 'ptai.g.dart';

@JsonSerializable()
class Ptai {
  int? ptalGridId;
  int? x;
  int? y;
  int? node;
  String? stopName;
  String? mode;
  String? routeCode;
  String? route;
  double? distm;
  double? vehiclesPerHour;
  double? weight;
  double? walkTime;
  double? swt;
  double? tat;
  double? edf;
  double? aI;
  String? ptalValue;

  Ptai({
    this.ptalGridId,
    this.x,
    this.y,
    this.node,
    this.stopName,
    this.mode,
    this.routeCode,
    this.route,
    this.distm,
    this.vehiclesPerHour,
    this.weight,
    this.walkTime,
    this.swt,
    this.tat,
    this.edf,
    this.aI,
    this.ptalValue,
  });

  factory Ptai.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PtaiFromJson(json);

  static List<Ptai> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Ptai.fromJson(value),
          )
          .toList();

  static Map<String, Ptai> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Ptai.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PtaiToJson(this);
}
