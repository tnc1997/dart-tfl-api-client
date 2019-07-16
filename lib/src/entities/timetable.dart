import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'timetable_route.dart';

part 'timetable.g.dart';

@JsonSerializable()
class Timetable implements Serializable {
  String departureStopId;

  List<TimetableRoute> routes;

  Timetable({
    this.departureStopId,
    this.routes,
  });

  factory Timetable.fromJson(Map<String, dynamic> json) {
    return _$TimetableFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TimetableToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
