import 'journey_planner_time_adjustments.dart';

class JourneyPlannerSearchCriteria {
  DateTime? dateTime;
  String? dateTimeType;
  JourneyPlannerTimeAdjustments? timeAdjustments;

  JourneyPlannerSearchCriteria({
    this.dateTime,
    this.dateTimeType,
    this.timeAdjustments,
  });

  factory JourneyPlannerSearchCriteria.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerSearchCriteria(
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      dateTimeType: json['dateTimeType'] as String?,
      timeAdjustments: json['timeAdjustments'] == null
          ? null
          : JourneyPlannerTimeAdjustments.fromJson(
              json['timeAdjustments'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dateTime': dateTime?.toIso8601String(),
      'dateTimeType': dateTimeType,
      'timeAdjustments': timeAdjustments,
    };
  }
}
