import './cycle_hire_docking_station_data.dart';
import './journey.dart';
import './journey_vector.dart';
import './search_criteria.dart';
import '../line.dart';

class ItineraryResult {
  List<Journey> journeys;

  List<Line> lines;

  CycleHireDockingStationData cycleHireDockingStationData;

  List<String> stopMessages;

  int recommendedMaxAgeMinutes;

  SearchCriteria searchCriteria;

  JourneyVector journeyVector;

  ItineraryResult();

  @override
  String toString() {
    return 'ItineraryResult[journeys=$journeys, lines=$lines, cycleHireDockingStationData=$cycleHireDockingStationData, stopMessages=$stopMessages, recommendedMaxAgeMinutes=$recommendedMaxAgeMinutes, searchCriteria=$searchCriteria, journeyVector=$journeyVector, ]';
  }

  ItineraryResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    journeys = Journey.listFromJson(json['journeys']);
    lines = Line.listFromJson(json['lines']);
    cycleHireDockingStationData = new CycleHireDockingStationData.fromJson(
        json['cycleHireDockingStationData']);
    stopMessages =
        (json['stopMessages'] as List).map((item) => item as String).toList();
    recommendedMaxAgeMinutes = json['recommendedMaxAgeMinutes'];
    searchCriteria = new SearchCriteria.fromJson(json['searchCriteria']);
    journeyVector = new JourneyVector.fromJson(json['journeyVector']);
  }

  Map<String, dynamic> toJson() {
    return {
      'journeys': journeys,
      'lines': lines,
      'cycleHireDockingStationData': cycleHireDockingStationData,
      'stopMessages': stopMessages,
      'recommendedMaxAgeMinutes': recommendedMaxAgeMinutes,
      'searchCriteria': searchCriteria,
      'journeyVector': journeyVector
    };
  }

  static List<ItineraryResult> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ItineraryResult>()
        : json.map((value) => new ItineraryResult.fromJson(value)).toList();
  }

  static Map<String, ItineraryResult> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ItineraryResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ItineraryResult.fromJson(value));
    }
    return map;
  }
}
