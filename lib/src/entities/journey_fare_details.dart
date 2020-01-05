import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/journey_fare_tap.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'journey_fare_details.g.dart';

@JsonSerializable()
class JourneyFareDetails implements Serializable {
  int lowZone;

  int highZone;

  int cost;

  String chargeProfileName;

  bool isHopperFare;

  String chargeLevel;

  int peak;

  int offPeak;

  List<JourneyFareTap> taps;

  JourneyFareDetails({
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

  factory JourneyFareDetails.fromJson(Map<String, dynamic> json) {
    return _$JourneyFareDetailsFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$JourneyFareDetailsToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
