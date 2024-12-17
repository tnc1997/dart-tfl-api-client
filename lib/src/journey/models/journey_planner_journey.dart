import 'journey_planner_journey_fare.dart';
import 'journey_planner_leg.dart';

class JourneyPlannerJourney {
  DateTime? startDateTime;
  int? duration;
  DateTime? arrivalDateTime;
  List<JourneyPlannerLeg>? legs;
  JourneyPlannerJourneyFare? fare;

  JourneyPlannerJourney({
    this.startDateTime,
    this.duration,
    this.arrivalDateTime,
    this.legs,
    this.fare,
  });

  factory JourneyPlannerJourney.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerJourney(
      startDateTime: json['startDateTime'] == null
          ? null
          : DateTime.parse(json['startDateTime'] as String),
      duration: (json['duration'] as num?)?.toInt(),
      arrivalDateTime: json['arrivalDateTime'] == null
          ? null
          : DateTime.parse(json['arrivalDateTime'] as String),
      legs: (json['legs'] as List<dynamic>?)
          ?.map((e) => JourneyPlannerLeg.fromJson(e as Map<String, dynamic>))
          .toList(),
      fare: json['fare'] == null
          ? null
          : JourneyPlannerJourneyFare.fromJson(
              json['fare'] as Map<String, dynamic>),
    );
  }

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
