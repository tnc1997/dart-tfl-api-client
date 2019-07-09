import './service_frequency.dart';
import './twenty_four_hour_clock_time.dart';
import '../../internal/serializable.dart';

class Period implements Serializable {
  String type;
  // enum typeEnum {  Normal,  FrequencyHours,  FrequencyMinutes,  Unknown,  };

  TwentyFourHourClockTime fromTime;

  TwentyFourHourClockTime toTime;

  ServiceFrequency frequency;

  Period({
    this.type,
    this.fromTime,
    this.toTime,
    this.frequency,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'fromTime': fromTime,
      'toTime': toTime,
      'frequency': frequency,
    };
  }

  @override
  String toString() {
    return 'Period[type=$type, fromTime=$fromTime, toTime=$toTime, frequency=$frequency, ]';
  }

  Period.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    type = json['type'];
    fromTime = TwentyFourHourClockTime.fromJson(json['fromTime']);
    toTime = TwentyFourHourClockTime.fromJson(json['toTime']);
    frequency = ServiceFrequency.fromJson(json['frequency']);
  }

  static List<Period> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Period>()
        : json.map((value) => Period.fromJson(value)).toList();
  }

  static Map<String, Period> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Period>()
        : json.map((key, value) => MapEntry(key, Period.fromJson(value)));
  }
}
