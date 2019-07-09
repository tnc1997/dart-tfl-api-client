import './schedule.dart';
import './station_interval.dart';

class TimetableRoute {
  List<StationInterval> stationIntervals = [];

  List<Schedule> schedules = [];

  TimetableRoute();

  @override
  String toString() {
    return 'TimetableRoute[stationIntervals=$stationIntervals, schedules=$schedules, ]';
  }

  TimetableRoute.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    stationIntervals = StationInterval.listFromJson(json['stationIntervals']);
    schedules = Schedule.listFromJson(json['schedules']);
  }

  Map<String, dynamic> toJson() {
    return {'stationIntervals': stationIntervals, 'schedules': schedules};
  }

  static List<TimetableRoute> listFromJson(List<dynamic> json) {
    return json == null
        ? List<TimetableRoute>()
        : json.map((value) => TimetableRoute.fromJson(value)).toList();
  }

  static Map<String, TimetableRoute> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, TimetableRoute>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = TimetableRoute.fromJson(value));
    }
    return map;
  }
}
