import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/known_journey.dart';
import 'package:tfl_api_client/src/models/period.dart';

part 'schedule.g.dart';

@JsonSerializable()
class Schedule {
  String? name;
  List<KnownJourney>? knownJourneys;
  KnownJourney? firstJourney;
  KnownJourney? lastJourney;
  List<Period>? periods;

  Schedule({
    this.name,
    this.knownJourneys,
    this.firstJourney,
    this.lastJourney,
    this.periods,
  });

  factory Schedule.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ScheduleFromJson(json);

  static List<Schedule> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Schedule.fromJson(value),
          )
          .toList();

  static Map<String, Schedule> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Schedule.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ScheduleToJson(this);
}
