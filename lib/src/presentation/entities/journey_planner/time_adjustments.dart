import './time_adjustment.dart';

class TimeAdjustments {
  TimeAdjustment earliest;

  TimeAdjustment earlier;

  TimeAdjustment later;

  TimeAdjustment latest;

  TimeAdjustments();

  @override
  String toString() {
    return 'TimeAdjustments[earliest=$earliest, earlier=$earlier, later=$later, latest=$latest, ]';
  }

  TimeAdjustments.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    earliest = new TimeAdjustment.fromJson(json['earliest']);
    earlier = new TimeAdjustment.fromJson(json['earlier']);
    later = new TimeAdjustment.fromJson(json['later']);
    latest = new TimeAdjustment.fromJson(json['latest']);
  }

  Map<String, dynamic> toJson() {
    return {
      'earliest': earliest,
      'earlier': earlier,
      'later': later,
      'latest': latest
    };
  }

  static List<TimeAdjustments> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<TimeAdjustments>()
        : json.map((value) => new TimeAdjustments.fromJson(value)).toList();
  }

  static Map<String, TimeAdjustments> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TimeAdjustments>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new TimeAdjustments.fromJson(value));
    }
    return map;
  }
}
