import '../../common/models/line.dart';
import 'cycle_hire_docking_station_data.dart';
import 'journey.dart';
import 'journey_result.dart';
import 'journey_vector.dart';
import 'search_criteria.dart';

class ItineraryResult extends JourneyResult {
  List<Journey>? journeys;
  List<Line>? lines;
  JourneyPlannerCycleHireDockingStationData? cycleHireDockingStationData;
  List<String>? stopMessages;

  ItineraryResult({
    int? recommendedMaxAgeMinutes,
    SearchCriteria? searchCriteria,
    JourneyVector? journeyVector,
    this.journeys,
    this.lines,
    this.cycleHireDockingStationData,
    this.stopMessages,
  }) : super(
          recommendedMaxAgeMinutes: recommendedMaxAgeMinutes,
          searchCriteria: searchCriteria,
          journeyVector: journeyVector,
        );

  factory ItineraryResult.fromJson(
    Map<String, dynamic> json,
  ) {
    return ItineraryResult(
      journeys: (json['journeys'] as List<dynamic>?)
          ?.map((e) => Journey.fromJson(e as Map<String, dynamic>))
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
          : SearchCriteria.fromJson(
              json['searchCriteria'] as Map<String, dynamic>),
      journeyVector: json['journeyVector'] == null
          ? null
          : JourneyVector.fromJson(
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
