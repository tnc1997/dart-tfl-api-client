import 'journey_planner_disambiguation.dart';
import 'journey_planner_journey_result.dart';
import 'journey_planner_journey_vector.dart';
import 'journey_planner_search_criteria.dart';

class JourneyPlannerDisambiguationResult extends JourneyPlannerJourneyResult {
  JourneyPlannerDisambiguation? toLocationDisambiguation;
  JourneyPlannerDisambiguation? fromLocationDisambiguation;
  JourneyPlannerDisambiguation? viaLocationDisambiguation;

  JourneyPlannerDisambiguationResult({
    int? recommendedMaxAgeMinutes,
    JourneyPlannerSearchCriteria? searchCriteria,
    JourneyPlannerJourneyVector? journeyVector,
    this.toLocationDisambiguation,
    this.fromLocationDisambiguation,
    this.viaLocationDisambiguation,
  }) : super(
          recommendedMaxAgeMinutes: recommendedMaxAgeMinutes,
          searchCriteria: searchCriteria,
          journeyVector: journeyVector,
        );

  factory JourneyPlannerDisambiguationResult.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerDisambiguationResult(
      recommendedMaxAgeMinutes:
          (json['recommendedMaxAgeMinutes'] as num?)?.toInt(),
      searchCriteria: json['searchCriteria'] == null
          ? null
          : JourneyPlannerSearchCriteria.fromJson(
              json['searchCriteria'] as Map<String, dynamic>),
      journeyVector: json['journeyVector'] == null
          ? null
          : JourneyPlannerJourneyVector.fromJson(
              json['journeyVector'] as Map<String, dynamic>),
      toLocationDisambiguation: json['toLocationDisambiguation'] == null
          ? null
          : JourneyPlannerDisambiguation.fromJson(
              json['toLocationDisambiguation'] as Map<String, dynamic>),
      fromLocationDisambiguation: json['fromLocationDisambiguation'] == null
          ? null
          : JourneyPlannerDisambiguation.fromJson(
              json['fromLocationDisambiguation'] as Map<String, dynamic>),
      viaLocationDisambiguation: json['viaLocationDisambiguation'] == null
          ? null
          : JourneyPlannerDisambiguation.fromJson(
              json['viaLocationDisambiguation'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'recommendedMaxAgeMinutes': recommendedMaxAgeMinutes,
      'searchCriteria': searchCriteria,
      'journeyVector': journeyVector,
      'toLocationDisambiguation': toLocationDisambiguation,
      'fromLocationDisambiguation': fromLocationDisambiguation,
      'viaLocationDisambiguation': viaLocationDisambiguation,
    };
  }
}
