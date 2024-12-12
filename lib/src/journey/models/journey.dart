import 'journey_fare.dart';
import 'leg.dart';

class Journey2 {
  DateTime? startDateTime;
  int? duration;
  DateTime? arrivalDateTime;
  List<Leg>? legs;
  JourneyFare? fare;

  Journey2({
    this.startDateTime,
    this.duration,
    this.arrivalDateTime,
    this.legs,
    this.fare,
  });

  factory Journey2.fromJson(
    Map<String, dynamic> json,
  ) {
    return Journey2(
      startDateTime: json['startDateTime'] == null
          ? null
          : DateTime.parse(json['startDateTime'] as String),
      duration: (json['duration'] as num?)?.toInt(),
      arrivalDateTime: json['arrivalDateTime'] == null
          ? null
          : DateTime.parse(json['arrivalDateTime'] as String),
      legs: (json['legs'] as List<dynamic>?)
          ?.map((e) => Leg.fromJson(e as Map<String, dynamic>))
          .toList(),
      fare: json['fare'] == null
          ? null
          : JourneyFare.fromJson(json['fare'] as Map<String, dynamic>),
    );
  }

  static List<Journey2> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Journey2.fromJson(value),
          )
          .toList();

  static Map<String, Journey2> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Journey2.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'startDateTime': startDateTime?.toIso8601String(),
      'duration': duration,
      'arrivalDateTime': arrivalDateTime?.toIso8601String(),
      'legs': legs,
      'fare': fare,
    };
  }
}
