import '../../common/models/line.dart';
import 'journey_planner_cycle_hire_docking_station_data.dart';
import 'journey_planner_journey.dart';
import 'journey_planner_journey_result.dart';
import 'journey_planner_journey_vector.dart';
import 'journey_planner_search_criteria.dart';

class JourneyPlannerItineraryResult extends JourneyPlannerJourneyResult {
  List<JourneyPlannerJourney>? journeys;
  List<Line>? lines;
  JourneyPlannerCycleHireDockingStationData? cycleHireDockingStationData;
  List<String>? stopMessages;

  JourneyPlannerItineraryResult({
    int? recommendedMaxAgeMinutes,
    JourneyPlannerSearchCriteria? searchCriteria,
    JourneyPlannerJourneyVector? journeyVector,
    this.journeys,
    this.lines,
    this.cycleHireDockingStationData,
    this.stopMessages,
  }) : super(
          recommendedMaxAgeMinutes: recommendedMaxAgeMinutes,
          searchCriteria: searchCriteria,
          journeyVector: journeyVector,
        );

  factory JourneyPlannerItineraryResult.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerItineraryResult(
      journeys: (json['journeys'] as List<dynamic>?)
          ?.map(
              (e) => JourneyPlannerJourney.fromJson(e as Map<String, dynamic>))
          .toList(),
      lines: (json['lines'] as List<dynamic>?)
          ?.map((e) => Line.fromJson(e as Map<String, dynamic>))
          .toList(),
      cycleHireDockingStationData: json['cycleHireDockingStationData'] == null
          ? null
          : JourneyPlannerCycleHireDockingStationData.fromJson(
              json['cycleHireDockingStationData'] as Map<String, dynamic>),
      stopMessages: (json['stopMessages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
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

  @override
  Map<String, dynamic> toJson() {
    return {
      'journeys': journeys,
      'lines': lines,
      'cycleHireDockingStationData': cycleHireDockingStationData,
      'stopMessages': stopMessages,
      'recommendedMaxAgeMinutes': recommendedMaxAgeMinutes,
      'searchCriteria': searchCriteria,
      'journeyVector': journeyVector,
    };
  }
}
