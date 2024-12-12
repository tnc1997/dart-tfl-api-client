import 'known_journey.dart';
import 'period.dart';

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
  ) {
    return Schedule(
      name: json['name'] as String?,
      knownJourneys: (json['knownJourneys'] as List<dynamic>?)
          ?.map((e) => KnownJourney.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstJourney: json['firstJourney'] == null
          ? null
          : KnownJourney.fromJson(json['firstJourney'] as Map<String, dynamic>),
      lastJourney: json['lastJourney'] == null
          ? null
          : KnownJourney.fromJson(json['lastJourney'] as Map<String, dynamic>),
      periods: (json['periods'] as List<dynamic>?)
          ?.map((e) => Period.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

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

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'knownJourneys': knownJourneys,
      'firstJourney': firstJourney,
      'lastJourney': lastJourney,
      'periods': periods,
    };
  }
}
