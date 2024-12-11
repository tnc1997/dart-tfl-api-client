import 'package:json_annotation/json_annotation.dart';

import 'timetable_route.dart';

part 'timetable.g.dart';

@JsonSerializable()
class Timetable {
  String? departureStopId;
  List<TimetableRoute>? routes;

  Timetable({
    this.departureStopId,
    this.routes,
  });

  factory Timetable.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TimetableFromJson(json);

  static List<Timetable> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Timetable.fromJson(value),
          )
          .toList();

  static Map<String, Timetable> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Timetable.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$TimetableToJson(this);
}
