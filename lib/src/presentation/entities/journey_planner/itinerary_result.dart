import './cycle_hire_docking_station_data.dart';
import './journey.dart';
import './journey_vector.dart';
import './search_criteria.dart';
import '../line.dart';
import '../../../internal/serializable.dart';

class ItineraryResult implements Serializable {
  List<Journey> journeys;

  List<Line> lines;

  CycleHireDockingStationData cycleHireDockingStationData;

  List<String> stopMessages;

  int recommendedMaxAgeMinutes;

  SearchCriteria searchCriteria;

  JourneyVector journeyVector;

  ItineraryResult({
    this.journeys,
    this.lines,
    this.cycleHireDockingStationData,
    this.stopMessages,
    this.recommendedMaxAgeMinutes,
    this.searchCriteria,
    this.journeyVector,
  });

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

  @override
  String toString() {
    return 'ItineraryResult[journeys=$journeys, lines=$lines, cycleHireDockingStationData=$cycleHireDockingStationData, stopMessages=$stopMessages, recommendedMaxAgeMinutes=$recommendedMaxAgeMinutes, searchCriteria=$searchCriteria, journeyVector=$journeyVector, ]';
  }

  ItineraryResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    journeys = Journey.listFromJson(json['journeys']);
    lines = Line.listFromJson(json['lines']);
    cycleHireDockingStationData = CycleHireDockingStationData.fromJson(
        json['cycleHireDockingStationData']);
    stopMessages =
        (json['stopMessages'] as List).map((item) => item as String).toList();
    recommendedMaxAgeMinutes = json['recommendedMaxAgeMinutes'];
    searchCriteria = SearchCriteria.fromJson(json['searchCriteria']);
    journeyVector = JourneyVector.fromJson(json['journeyVector']);
  }

  static List<ItineraryResult> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<ItineraryResult>()
        : json.map((value) => ItineraryResult.fromJson(value)).toList();
  }

  static Map<String, ItineraryResult> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, ItineraryResult>()
        : json.map(
            (key, value) => MapEntry(key, ItineraryResult.fromJson(value)));
  }
}
