import '../../internal/serializable.dart';

class Interval implements Serializable {
  String stopId;

  double timeToArrival;

  Interval({
    this.stopId,
    this.timeToArrival,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'stopId': stopId,
      'timeToArrival': timeToArrival,
    };
  }

  @override
  String toString() {
    return 'Interval[stopId=$stopId, timeToArrival=$timeToArrival, ]';
  }

  Interval.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    stopId = json['stopId'];
    timeToArrival = json['timeToArrival'];
  }

  static List<Interval> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Interval>()
        : json.map((value) => Interval.fromJson(value)).toList();
  }

  static Map<String, Interval> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Interval>()
        : json.map((key, value) => MapEntry(key, Interval.fromJson(value)));
  }
}
