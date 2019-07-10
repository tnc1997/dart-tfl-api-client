import './time_adjustment.dart';
import '../../../internal/serializable.dart';

class TimeAdjustments implements Serializable {
  TimeAdjustment earliest;

  TimeAdjustment earlier;

  TimeAdjustment later;

  TimeAdjustment latest;

  TimeAdjustments({
    this.earliest,
    this.earlier,
    this.later,
    this.latest,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'earliest': earliest,
      'earlier': earlier,
      'later': later,
      'latest': latest,
    };
  }

  @override
  String toString() {
    return 'TimeAdjustments[earliest=$earliest, earlier=$earlier, later=$later, latest=$latest]';
  }

  TimeAdjustments.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    earliest = TimeAdjustment.fromJson(json['earliest']);
    earlier = TimeAdjustment.fromJson(json['earlier']);
    later = TimeAdjustment.fromJson(json['later']);
    latest = TimeAdjustment.fromJson(json['latest']);
  }

  static List<TimeAdjustments> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<TimeAdjustments>()
        : json.map((value) => TimeAdjustments.fromJson(value)).toList();
  }

  static Map<String, TimeAdjustments> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, TimeAdjustments>()
        : json.map(
            (key, value) => MapEntry(key, TimeAdjustments.fromJson(value)));
  }
}
