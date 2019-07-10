import './schedule.dart';
import './station_interval.dart';
import '../../internal/serializable.dart';

class TimetableRoute implements Serializable {
  List<StationInterval> stationIntervals;

  List<Schedule> schedules;

  TimetableRoute({
    this.stationIntervals,
    this.schedules,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'stationIntervals': stationIntervals,
      'schedules': schedules,
    };
  }

  @override
  String toString() {
    return 'TimetableRoute[stationIntervals=$stationIntervals, schedules=$schedules]';
  }

  TimetableRoute.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    stationIntervals = StationInterval.listFromJson(json['stationIntervals']);
    schedules = Schedule.listFromJson(json['schedules']);
  }

  static List<TimetableRoute> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<TimetableRoute>()
        : json.map((value) => TimetableRoute.fromJson(value)).toList();
  }

  static Map<String, TimetableRoute> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, TimetableRoute>()
        : json
            .map((key, value) => MapEntry(key, TimetableRoute.fromJson(value)));
  }
}
