﻿import 'timetable_route.dart';

class Timetable {
  String? departureStopId;
  List<TimetableRoute>? routes;

  Timetable({
    this.departureStopId,
    this.routes,
  });

  factory Timetable.fromJson(
    Map<String, dynamic> json,
  ) {
    return Timetable(
      departureStopId: json['departureStopId'] as String?,
      routes: (json['routes'] as List<dynamic>?)
          ?.map((e) => TimetableRoute.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'departureStopId': departureStopId,
      'routes': routes,
    };
  }
}
