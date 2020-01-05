import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/journey_fare_tap_details.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'journey_fare_tap.g.dart';

@JsonSerializable()
class JourneyFareTap implements Serializable {
  String atcoCode;

  JourneyFareTapDetails tapDetails;

  JourneyFareTap({
    this.atcoCode,
    this.tapDetails,
  });

  factory JourneyFareTap.fromJson(Map<String, dynamic> json) {
    return _$JourneyFareTapFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$JourneyFareTapToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
