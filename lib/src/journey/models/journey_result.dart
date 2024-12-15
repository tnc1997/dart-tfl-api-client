import 'disambiguation_result.dart';
import 'itinerary_result.dart';
import 'journey_vector.dart';
import 'search_criteria.dart';

class JourneyResult {
  int? recommendedMaxAgeMinutes;
  SearchCriteria? searchCriteria;
  JourneyVector? journeyVector;

  JourneyResult({
    this.recommendedMaxAgeMinutes,
    this.searchCriteria,
    this.journeyVector,
  });

  factory JourneyResult.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json['\$type']) {
      case 'Tfl.Api.Presentation.Entities.JourneyPlanner.DisambiguationResult, Tfl.Api.Presentation.Entities':
        return DisambiguationResult.fromJson(json);
      case 'Tfl.Api.Presentation.Entities.JourneyPlanner.ItineraryResult, Tfl.Api.Presentation.Entities':
        return ItineraryResult.fromJson(json);
      default:
        return JourneyResult(
          recommendedMaxAgeMinutes:
              (json['recommendedMaxAgeMinutes'] as num?)?.toInt(),
          searchCriteria: json['searchCriteria'] == null
              ? null
              : SearchCriteria.fromJson(
                  json['searchCriteria'] as Map<String, dynamic>),
          journeyVector: json['journeyVector'] == null
              ? null
              : JourneyVector.fromJson(
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
