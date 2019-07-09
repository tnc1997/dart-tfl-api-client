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
    earliest = TimeAdjustment.fromJson(json['earliest']);
    earlier = TimeAdjustment.fromJson(json['earlier']);
    later = TimeAdjustment.fromJson(json['later']);
    latest = TimeAdjustment.fromJson(json['latest']);
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
        ? List<TimeAdjustments>()
        : json.map((value) => TimeAdjustments.fromJson(value)).toList();
  }

  static Map<String, TimeAdjustments> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, TimeAdjustments>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = TimeAdjustments.fromJson(value));
    }
    return map;
  }
}
