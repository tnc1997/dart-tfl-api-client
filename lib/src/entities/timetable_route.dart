import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/schedule.dart';
import 'package:tfl_api_client/src/entities/station_interval.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'timetable_route.g.dart';

@JsonSerializable()
class TimetableRoute implements Serializable {
  List<StationInterval> stationIntervals;

  List<Schedule> schedules;

  TimetableRoute({
    this.stationIntervals,
    this.schedules,
  });

  factory TimetableRoute.fromJson(Map<String, dynamic> json) {
    return _$TimetableRouteFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TimetableRouteToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
