import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/journey_fare_caveat.dart';
import 'package:tfl_api_client/src/entities/journey_fare_details.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

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
