import 'package:json_annotation/json_annotation.dart';

import 'service_frequency.dart';
import 'twenty_four_hour_clock_time.dart';

part 'period.g.dart';

@JsonSerializable()
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
  ) =>
      _$PeriodFromJson(json);

  static List<Period> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Period.fromJson(value),
          )
          .toList();

  static Map<String, Period> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Period.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PeriodToJson(this);
}
