import '../../../internal/serializable.dart';

class TimeAdjustment implements Serializable {
  String date;

  String time;

  String timeIs;

  String uri;

  TimeAdjustment({
    this.date,
    this.time,
    this.timeIs,
    this.uri,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'time': time,
      'timeIs': timeIs,
      'uri': uri,
    };
  }

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

  static List<TimeAdjustment> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<TimeAdjustment>()
        : json.map((value) => TimeAdjustment.fromJson(value)).toList();
  }

  static Map<String, TimeAdjustment> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, TimeAdjustment>()
        : json
            .map((key, value) => MapEntry(key, TimeAdjustment.fromJson(value)));
  }
}
