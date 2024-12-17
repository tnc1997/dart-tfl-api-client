import 'journey_planner_fare_tap_details.dart';

class JourneyPlannerFareTap {
  String? atcoCode;
  JourneyPlannerFareTapDetails? tapDetails;

  JourneyPlannerFareTap({
    this.atcoCode,
    this.tapDetails,
  });

  factory JourneyPlannerFareTap.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerFareTap(
      atcoCode: json['atcoCode'] as String?,
      tapDetails: json['tapDetails'] == null
          ? null
          : JourneyPlannerFareTapDetails.fromJson(
              json['tapDetails'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'atcoCode': atcoCode,
      'tapDetails': tapDetails,
    };
  }
}
