import './timetable_route.dart';
import '../../internal/serializable.dart';

class Timetable implements Serializable {
  String departureStopId;

  List<TimetableRoute> routes;

  Timetable({
    this.departureStopId,
    this.routes,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'departureStopId': departureStopId,
      'routes': routes,
    };
  }

  @override
  String toString() {
    return 'Timetable[departureStopId=$departureStopId, routes=$routes]';
  }

  Timetable.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    departureStopId = json['departureStopId'];
    routes = TimetableRoute.listFromJson(json['routes']);
  }

  static List<Timetable> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Timetable>()
        : json.map((value) => Timetable.fromJson(value)).toList();
  }

  static Map<String, Timetable> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Timetable>()
        : json.map((key, value) => MapEntry(key, Timetable.fromJson(value)));
  }
}
