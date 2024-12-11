import 'package:json_annotation/json_annotation.dart';

import '../../common/models/line.dart';
import 'journey.dart';
import 'journey_planner_cycle_hire_docking_station_data.dart';
import 'journey_vector.dart';
import 'search_criteria.dart';

part 'itinerary_result.g.dart';

@JsonSerializable()
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
