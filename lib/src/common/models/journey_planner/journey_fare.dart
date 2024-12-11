import 'package:json_annotation/json_annotation.dart';

import 'fare.dart';
import 'fare_caveat.dart';

part 'journey_fare.g.dart';

@JsonSerializable()
class JourneyFare {
  int? totalCost;
  List<Fare2>? fares;
  List<FareCaveat>? caveats;

  JourneyFare({
    this.totalCost,
    this.fares,
    this.caveats,
  });

  factory JourneyFare.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$JourneyFareFromJson(json);

  static List<JourneyFare> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => JourneyFare.fromJson(value),
          )
          .toList();

  static Map<String, JourneyFare> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          JourneyFare.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$JourneyFareToJson(this);
}
