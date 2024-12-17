import 'journey_planner_fare.dart';
import 'journey_planner_fare_caveat.dart';

class JourneyPlannerJourneyFare {
  int? totalCost;
  List<JourneyPlannerFare>? fares;
  List<JourneyPlannerFareCaveat>? caveats;

  JourneyPlannerJourneyFare({
    this.totalCost,
    this.fares,
    this.caveats,
  });

  factory JourneyPlannerJourneyFare.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerJourneyFare(
      totalCost: (json['totalCost'] as num?)?.toInt(),
      fares: (json['fares'] as List<dynamic>?)
          ?.map((e) => JourneyPlannerFare.fromJson(e as Map<String, dynamic>))
          .toList(),
      caveats: (json['caveats'] as List<dynamic>?)
          ?.map((e) =>
              JourneyPlannerFareCaveat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCost': totalCost,
      'fares': fares,
      'caveats': caveats,
    };
  }
}
