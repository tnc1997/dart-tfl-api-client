import 'schedule.dart';
import 'station_interval.dart';

class TimetableRoute {
  List<StationInterval>? stationIntervals;
  List<Schedule>? schedules;

  TimetableRoute({
    this.stationIntervals,
    this.schedules,
  });

  factory TimetableRoute.fromJson(
    Map<String, dynamic> json,
  ) {
    return TimetableRoute(
      stationIntervals: (json['stationIntervals'] as List<dynamic>?)
          ?.map((e) => StationInterval.fromJson(e as Map<String, dynamic>))
          .toList(),
      schedules: (json['schedules'] as List<dynamic>?)
          ?.map((e) => Schedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'stationIntervals': stationIntervals,
      'schedules': schedules,
    };
  }
}
