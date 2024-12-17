import 'journey_planner_time_adjustment.dart';

class JourneyPlannerTimeAdjustments {
  JourneyPlannerTimeAdjustment? earliest;
  JourneyPlannerTimeAdjustment? earlier;
  JourneyPlannerTimeAdjustment? later;
  JourneyPlannerTimeAdjustment? latest;

  JourneyPlannerTimeAdjustments({
    this.earliest,
    this.earlier,
    this.later,
    this.latest,
  });

  factory JourneyPlannerTimeAdjustments.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerTimeAdjustments(
      earliest: json['earliest'] == null
          ? null
          : JourneyPlannerTimeAdjustment.fromJson(
              json['earliest'] as Map<String, dynamic>),
      earlier: json['earlier'] == null
          ? null
          : JourneyPlannerTimeAdjustment.fromJson(
              json['earlier'] as Map<String, dynamic>),
      later: json['later'] == null
          ? null
          : JourneyPlannerTimeAdjustment.fromJson(
              json['later'] as Map<String, dynamic>),
      latest: json['latest'] == null
          ? null
          : JourneyPlannerTimeAdjustment.fromJson(
              json['latest'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'earliest': earliest,
      'earlier': earlier,
      'later': later,
      'latest': latest,
    };
  }
}
