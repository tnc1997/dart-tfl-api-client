class Interval {
  String stopId;

  double timeToArrival;

  Interval();

  @override
  String toString() {
    return 'Interval[stopId=$stopId, timeToArrival=$timeToArrival, ]';
  }

  Interval.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    stopId = json['stopId'];
    timeToArrival = json['timeToArrival'];
  }

  Map<String, dynamic> toJson() {
    return {'stopId': stopId, 'timeToArrival': timeToArrival};
  }

  static List<Interval> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Interval>()
        : json.map((value) => new Interval.fromJson(value)).toList();
  }

  static Map<String, Interval> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Interval>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Interval.fromJson(value));
    }
    return map;
  }
}
