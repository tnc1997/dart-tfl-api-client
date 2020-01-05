import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'journey_fare_tap_details.g.dart';

@JsonSerializable()
class JourneyFareTapDetails implements Serializable {
  String modeType;

  String validationType;

  String hostDeviceType;

  String busRouteId;

  int nationalLocationCode;

  DateTime tapTimestamp;

  JourneyFareTapDetails({
    this.modeType,
    this.validationType,
    this.hostDeviceType,
    this.busRouteId,
    this.nationalLocationCode,
    this.tapTimestamp,
  });

  factory JourneyFareTapDetails.fromJson(Map<String, dynamic> json) {
    return _$JourneyFareTapDetailsFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$JourneyFareTapDetailsToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
