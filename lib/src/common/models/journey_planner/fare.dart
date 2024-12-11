import 'package:json_annotation/json_annotation.dart';

import 'fare_tap.dart';

part 'fare.g.dart';

@JsonSerializable()
class Fare2 {
  int? lowZone;
  int? highZone;
  int? cost;
  String? chargeProfileName;
  bool? isHopperFare;
  String? chargeLevel;
  int? peak;
  int? offPeak;
  List<FareTap>? taps;

  Fare2({
    this.lowZone,
    this.highZone,
    this.cost,
    this.chargeProfileName,
    this.isHopperFare,
    this.chargeLevel,
    this.peak,
    this.offPeak,
    this.taps,
  });

  factory Fare2.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$Fare2FromJson(json);

  static List<Fare2> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Fare2.fromJson(value),
          )
          .toList();

  static Map<String, Fare2> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Fare2.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$Fare2ToJson(this);
}
