import 'package:json_annotation/json_annotation.dart';

import '../line.dart';
import 'journey.dart';
import 'journey_planner_cycle_hire_docking_station_data.dart';
import 'journey_result.dart';
import 'journey_vector.dart';
import 'search_criteria.dart';

part 'itinerary_result.g.dart';

@JsonSerializable()
class ItineraryResult extends JourneyResult {
  List<Journey2>? journeys;
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
  ) =>
      _$ItineraryResultFromJson(json);

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

  Map<String, dynamic> toJson() => _$ItineraryResultToJson(this);
}
