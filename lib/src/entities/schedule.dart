import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/known_journey.dart';
import 'package:tfl_api_client/src/entities/period.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'schedule.g.dart';

@JsonSerializable()
class Schedule implements Serializable {
  String name;

  List<KnownJourney> knownJourneys;

  KnownJourney firstJourney;

  KnownJourney lastJourney;

  List<Period> periods;

  Schedule({
    this.name,
    this.knownJourneys,
    this.firstJourney,
    this.lastJourney,
    this.periods,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) {
    return _$ScheduleFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$ScheduleToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
