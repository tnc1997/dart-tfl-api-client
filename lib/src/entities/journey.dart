import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/journey_fare.dart';
import 'package:tfl_api_client/src/entities/leg.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'journey.g.dart';

@JsonSerializable()
class Journey implements Serializable {
  DateTime startDateTime;

  int duration;

  DateTime arrivalDateTime;

  List<Leg> legs;

  JourneyFare fare;

  Journey({
    this.startDateTime,
    this.duration,
    this.arrivalDateTime,
    this.legs,
    this.fare,
  });

  factory Journey.fromJson(Map<String, dynamic> json) {
    return _$JourneyFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$JourneyToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
