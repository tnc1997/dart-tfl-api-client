import 'journey_planner_disambiguation_result.dart';
import 'journey_planner_itinerary_result.dart';
import 'journey_planner_journey_vector.dart';
import 'journey_planner_search_criteria.dart';

class JourneyPlannerJourneyResult {
  int? recommendedMaxAgeMinutes;
  JourneyPlannerSearchCriteria? searchCriteria;
  JourneyPlannerJourneyVector? journeyVector;

  JourneyPlannerJourneyResult({
    this.recommendedMaxAgeMinutes,
    this.searchCriteria,
    this.journeyVector,
  });

  factory JourneyPlannerJourneyResult.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json['\$type']) {
      case 'Tfl.Api.Presentation.Entities.JourneyPlanner.DisambiguationResult, Tfl.Api.Presentation.Entities':
        return JourneyPlannerDisambiguationResult.fromJson(json);
      case 'Tfl.Api.Presentation.Entities.JourneyPlanner.ItineraryResult, Tfl.Api.Presentation.Entities':
        return JourneyPlannerItineraryResult.fromJson(json);
      default:
        return JourneyPlannerJourneyResult(
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
        );
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'recommendedMaxAgeMinutes': recommendedMaxAgeMinutes,
      'searchCriteria': searchCriteria,
      'journeyVector': journeyVector,
    };
  }
}
