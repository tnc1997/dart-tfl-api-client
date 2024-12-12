import '../../common/models/line.dart';
import 'journey.dart';
import 'journey_planner_cycle_hire_docking_station_data.dart';
import 'journey_vector.dart';
import 'search_criteria.dart';

class ItineraryResult {
  List<Journey2>? journeys;
  List<Line>? lines;
  JourneyPlannerCycleHireDockingStationData? cycleHireDockingStationData;
  List<String>? stopMessages;
  int? recommendedMaxAgeMinutes;
  SearchCriteria? searchCriteria;
  JourneyVector? journeyVector;

  ItineraryResult({
    this.journeys,
    this.lines,
    this.cycleHireDockingStationData,
    this.stopMessages,
    this.recommendedMaxAgeMinutes,
    this.searchCriteria,
    this.journeyVector,
  });

  factory ItineraryResult.fromJson(
    Map<String, dynamic> json,
  ) {
    return ItineraryResult(
      journeys: (json['journeys'] as List<dynamic>?)
          ?.map((e) => Journey2.fromJson(e as Map<String, dynamic>))
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

  static List<ItineraryResult> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ItineraryResult.fromJson(value),
          )
          .toList();

  static Map<String, ItineraryResult> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ItineraryResult.fromJson(value),
        ),
      );

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
