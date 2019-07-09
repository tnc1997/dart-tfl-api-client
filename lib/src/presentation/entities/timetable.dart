import './timetable_route.dart';

class Timetable {
  String departureStopId;

  List<TimetableRoute> routes = [];

  Timetable();

  @override
  String toString() {
    return 'Timetable[departureStopId=$departureStopId, routes=$routes, ]';
  }

  Timetable.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    departureStopId = json['departureStopId'];
    routes = TimetableRoute.listFromJson(json['routes']);
  }

  Map<String, dynamic> toJson() {
    return {'departureStopId': departureStopId, 'routes': routes};
  }

  static List<Timetable> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Timetable>()
        : json.map((value) => Timetable.fromJson(value)).toList();
  }

  static Map<String, Timetable> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, Timetable>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = Timetable.fromJson(value));
    }
    return map;
  }
}
