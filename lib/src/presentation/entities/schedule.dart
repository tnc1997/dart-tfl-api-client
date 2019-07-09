import './known_journey.dart';
import './period.dart';
import '../../internal/serializable.dart';

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

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'knownJourneys': knownJourneys,
      'firstJourney': firstJourney,
      'lastJourney': lastJourney,
      'periods': periods,
    };
  }

  @override
  String toString() {
    return 'Schedule[name=$name, knownJourneys=$knownJourneys, firstJourney=$firstJourney, lastJourney=$lastJourney, periods=$periods, ]';
  }

  Schedule.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    name = json['name'];
    knownJourneys = KnownJourney.listFromJson(json['knownJourneys']);
    firstJourney = KnownJourney.fromJson(json['firstJourney']);
    lastJourney = KnownJourney.fromJson(json['lastJourney']);
    periods = Period.listFromJson(json['periods']);
  }

  static List<Schedule> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Schedule>()
        : json.map((value) => Schedule.fromJson(value)).toList();
  }

  static Map<String, Schedule> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Schedule>()
        : json.map((key, value) => MapEntry(key, Schedule.fromJson(value)));
  }
}
