import './interval.dart';
import '../../internal/serializable.dart';

class StationInterval implements Serializable {
  String id;

  List<Interval> intervals;

  StationInterval({
    this.id,
    this.intervals,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'intervals': intervals,
    };
  }

  @override
  String toString() {
    return 'StationInterval[id=$id, intervals=$intervals, ]';
  }

  StationInterval.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    id = json['id'];
    intervals = Interval.listFromJson(json['intervals']);
  }

  static List<StationInterval> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<StationInterval>()
        : json.map((value) => StationInterval.fromJson(value)).toList();
  }

  static Map<String, StationInterval> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, StationInterval>()
        : json.map(
            (key, value) => MapEntry(key, StationInterval.fromJson(value)));
  }
}
