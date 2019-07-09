import './journey_fare.dart';
import './leg.dart';

class Journey {
  DateTime startDateTime;

  int duration;

  DateTime arrivalDateTime;

  List<Leg> legs;

  JourneyFare fare;

  Journey();

  @override
  String toString() {
    return 'Journey[startDateTime=$startDateTime, duration=$duration, arrivalDateTime=$arrivalDateTime, legs=$legs, fare=$fare, ]';
  }

  Journey.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    startDateTime = json['startDateTime'] == null
        ? null
        : DateTime.parse(json['startDateTime']);
    duration = json['duration'];
    arrivalDateTime = json['arrivalDateTime'] == null
        ? null
        : DateTime.parse(json['arrivalDateTime']);
    legs = Leg.listFromJson(json['legs']);
    fare = new JourneyFare.fromJson(json['fare']);
  }

  Map<String, dynamic> toJson() {
    return {
      'startDateTime':
          startDateTime == null ? '' : startDateTime.toUtc().toIso8601String(),
      'duration': duration,
      'arrivalDateTime': arrivalDateTime == null
          ? ''
          : arrivalDateTime.toUtc().toIso8601String(),
      'legs': legs,
      'fare': fare
    };
  }

  static List<Journey> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Journey>()
        : json.map((value) => new Journey.fromJson(value)).toList();
  }

  static Map<String, Journey> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Journey>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Journey.fromJson(value));
    }
    return map;
  }
}
