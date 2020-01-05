import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'twenty_four_hour_clock_time.g.dart';

@JsonSerializable()
class TwentyFourHourClockTime implements Serializable {
  String hour;

  String minute;

  TwentyFourHourClockTime({
    this.hour,
    this.minute,
  });

  factory TwentyFourHourClockTime.fromJson(Map<String, dynamic> json) {
    return _$TwentyFourHourClockTimeFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TwentyFourHourClockTimeToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
