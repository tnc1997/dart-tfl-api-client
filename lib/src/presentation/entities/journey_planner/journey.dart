import './journey_fare.dart';
import './leg.dart';
import '../../../internal/serializable.dart';

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

  @override
  Map<String, dynamic> toJson() {
    return {
      'startDateTime':
          startDateTime == null ? '' : startDateTime.toUtc().toIso8601String(),
      'duration': duration,
      'arrivalDateTime': arrivalDateTime == null
          ? ''
          : arrivalDateTime.toUtc().toIso8601String(),
      'legs': legs,
      'fare': fare,
    };
  }

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
    fare = JourneyFare.fromJson(json['fare']);
  }

  static List<Journey> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Journey>()
        : json.map((value) => Journey.fromJson(value)).toList();
  }

  static Map<String, Journey> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Journey>()
        : json.map((key, value) => MapEntry(key, Journey.fromJson(value)));
  }
}
