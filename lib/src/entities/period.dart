import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/service_frequency.dart';
import 'package:tfl_api_client/src/entities/twenty_four_hour_clock_time.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'period.g.dart';

@JsonSerializable()
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

  factory Period.fromJson(Map<String, dynamic> json) {
    return _$PeriodFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$PeriodToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
