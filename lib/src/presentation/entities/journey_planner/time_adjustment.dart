class TimeAdjustment {
  String date;

  String time;

  String timeIs;

  String uri;

  TimeAdjustment();

  @override
  String toString() {
    return 'TimeAdjustment[date=$date, time=$time, timeIs=$timeIs, uri=$uri, ]';
  }

  TimeAdjustment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    date = json['date'];
    time = json['time'];
    timeIs = json['timeIs'];
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    return {'date': date, 'time': time, 'timeIs': timeIs, 'uri': uri};
  }

  static List<TimeAdjustment> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<TimeAdjustment>()
        : json.map((value) => new TimeAdjustment.fromJson(value)).toList();
  }

  static Map<String, TimeAdjustment> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TimeAdjustment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new TimeAdjustment.fromJson(value));
    }
    return map;
  }
}
