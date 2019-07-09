import './interval.dart';

class StationInterval {
  String id;

  List<Interval> intervals;

  StationInterval();

  @override
  String toString() {
    return 'StationInterval[id=$id, intervals=$intervals, ]';
  }

  StationInterval.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    intervals = Interval.listFromJson(json['intervals']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'intervals': intervals};
  }

  static List<StationInterval> listFromJson(List<dynamic> json) {
    return json == null
        ? List<StationInterval>()
        : json.map((value) => StationInterval.fromJson(value)).toList();
  }

  static Map<String, StationInterval> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, StationInterval>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = StationInterval.fromJson(value));
    }
    return map;
  }
}
