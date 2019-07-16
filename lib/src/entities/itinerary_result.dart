import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'line.dart';
import 'cycle_hire_docking_station_data.dart';
import 'journey.dart';
import 'search_criteria.dart';
import 'vector.dart';

part 'itinerary_result.g.dart';

@JsonSerializable()
class ItineraryResult implements Serializable {
  List<Journey> journeys;

  List<Line> lines;

  CycleHireDockingStationData cycleHireDockingStationData;

  List<String> stopMessages;

  int recommendedMaxAgeMinutes;

  SearchCriteria searchCriteria;

  Vector journeyVector;

  ItineraryResult({
    this.journeys,
    this.lines,
    this.cycleHireDockingStationData,
    this.stopMessages,
    this.recommendedMaxAgeMinutes,
    this.searchCriteria,
    this.journeyVector,
  });

  factory ItineraryResult.fromJson(Map<String, dynamic> json) {
    return _$ItineraryResultFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$ItineraryResultToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
