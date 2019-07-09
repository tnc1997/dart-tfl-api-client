import './known_journey.dart';
import './period.dart';

class Schedule {
  String name;

  List<KnownJourney> knownJourneys;

  KnownJourney firstJourney;

  KnownJourney lastJourney;

  List<Period> periods;

  Schedule();

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

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'knownJourneys': knownJourneys,
      'firstJourney': firstJourney,
      'lastJourney': lastJourney,
      'periods': periods
    };
  }

  static List<Schedule> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Schedule>()
        : json.map((value) => Schedule.fromJson(value)).toList();
  }

  static Map<String, Schedule> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, Schedule>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = Schedule.fromJson(value));
    }
    return map;
  }
}
