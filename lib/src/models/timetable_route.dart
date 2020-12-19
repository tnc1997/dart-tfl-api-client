import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/schedule.dart';
import 'package:tfl_api_client/src/models/station_interval.dart';

part 'timetable_route.g.dart';

@JsonSerializable()
class TimetableRoute {
  List<StationInterval>? stationIntervals;
  List<Schedule>? schedules;

  TimetableRoute({
    this.stationIntervals,
    this.schedules,
  });

  factory TimetableRoute.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TimetableRouteFromJson(json);

  static List<TimetableRoute> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => TimetableRoute.fromJson(value),
          )
          .toList();

  static Map<String, TimetableRoute> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          TimetableRoute.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$TimetableRouteToJson(this);
}
