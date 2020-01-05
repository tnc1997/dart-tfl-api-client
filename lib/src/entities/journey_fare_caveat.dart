import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'journey_fare_caveat.g.dart';

@JsonSerializable()
class JourneyFareCaveat implements Serializable {
  String text;

  String type;

  JourneyFareCaveat({
    this.text,
    this.type,
  });

  factory JourneyFareCaveat.fromJson(Map<String, dynamic> json) {
    return _$JourneyFareCaveatFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$JourneyFareCaveatToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
