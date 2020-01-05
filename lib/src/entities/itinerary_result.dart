import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/cycle_hire_docking_station_data.dart';
import 'package:tfl_api_client/src/entities/journey.dart';
import 'package:tfl_api_client/src/entities/line.dart';
import 'package:tfl_api_client/src/entities/search_criteria.dart';
import 'package:tfl_api_client/src/entities/vector.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

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
