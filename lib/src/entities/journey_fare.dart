import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'journey_fare_caveat.dart';
import 'journey_fare_details.dart';

part 'journey_fare.g.dart';

@JsonSerializable()
class JourneyFare implements Serializable {
  int totalCost;

  List<JourneyFareDetails> fares;

  List<JourneyFareCaveat> caveats;

  JourneyFare({
    this.totalCost,
    this.fares,
    this.caveats,
  });

  factory JourneyFare.fromJson(Map<String, dynamic> json) {
    return _$JourneyFareFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$JourneyFareToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
