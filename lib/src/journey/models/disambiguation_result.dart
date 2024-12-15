import 'disambiguation.dart';
import 'journey_result.dart';
import 'journey_vector.dart';
import 'search_criteria.dart';

class DisambiguationResult extends JourneyResult {
  JourneyPlannerDisambiguation? toLocationDisambiguation;
  JourneyPlannerDisambiguation? fromLocationDisambiguation;
  JourneyPlannerDisambiguation? viaLocationDisambiguation;

  DisambiguationResult({
    int? recommendedMaxAgeMinutes,
    SearchCriteria? searchCriteria,
    JourneyVector? journeyVector,
    this.toLocationDisambiguation,
    this.fromLocationDisambiguation,
    this.viaLocationDisambiguation,
  }) : super(
          recommendedMaxAgeMinutes: recommendedMaxAgeMinutes,
          searchCriteria: searchCriteria,
          journeyVector: journeyVector,
        );

  factory DisambiguationResult.fromJson(
    Map<String, dynamic> json,
  ) {
    return DisambiguationResult(
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
