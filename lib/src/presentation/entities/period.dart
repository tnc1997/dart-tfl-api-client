import './service_frequency.dart';
import './twenty_four_hour_clock_time.dart';

class Period {
  String type;
  // enum typeEnum {  Normal,  FrequencyHours,  FrequencyMinutes,  Unknown,  };

  TwentyFourHourClockTime fromTime;

  TwentyFourHourClockTime toTime;

  ServiceFrequency frequency;

  Period();

  @override
  String toString() {
    return 'Period[type=$type, fromTime=$fromTime, toTime=$toTime, frequency=$frequency, ]';
  }

  Period.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    fromTime = new TwentyFourHourClockTime.fromJson(json['fromTime']);
    toTime = new TwentyFourHourClockTime.fromJson(json['toTime']);
    frequency = new ServiceFrequency.fromJson(json['frequency']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'fromTime': fromTime,
      'toTime': toTime,
      'frequency': frequency
    };
  }

  static List<Period> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Period>()
        : json.map((value) => new Period.fromJson(value)).toList();
  }

  static Map<String, Period> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Period>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Period.fromJson(value));
    }
    return map;
  }
}
