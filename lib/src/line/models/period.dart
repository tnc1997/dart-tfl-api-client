import 'service_frequency.dart';
import 'twenty_four_hour_clock_time.dart';

class Period {
  String? type;
  TwentyFourHourClockTime? fromTime;
  TwentyFourHourClockTime? toTime;
  ServiceFrequency? frequency;

  Period({
    this.type,
    this.fromTime,
    this.toTime,
    this.frequency,
  });

  factory Period.fromJson(
    Map<String, dynamic> json,
  ) {
    return Period(
      type: json['type'] as String?,
      fromTime: json['fromTime'] == null
          ? null
          : TwentyFourHourClockTime.fromJson(
              json['fromTime'] as Map<String, dynamic>),
      toTime: json['toTime'] == null
          ? null
          : TwentyFourHourClockTime.fromJson(
              json['toTime'] as Map<String, dynamic>),
      frequency: json['frequency'] == null
          ? null
          : ServiceFrequency.fromJson(
              json['frequency'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'fromTime': fromTime,
      'toTime': toTime,
      'frequency': frequency,
    };
  }
}
