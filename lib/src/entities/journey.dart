import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'journey_fare.dart';
import 'leg.dart';

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
