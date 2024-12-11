import 'package:json_annotation/json_annotation.dart';

part 'twenty_four_hour_clock_time.g.dart';

@JsonSerializable()
class TwentyFourHourClockTime {
  String? hour;
  String? minute;

  TwentyFourHourClockTime({
    this.hour,
    this.minute,
  });

  factory TwentyFourHourClockTime.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TwentyFourHourClockTimeFromJson(json);

  static List<TwentyFourHourClockTime> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => TwentyFourHourClockTime.fromJson(value),
          )
          .toList();

  static Map<String, TwentyFourHourClockTime> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          TwentyFourHourClockTime.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$TwentyFourHourClockTimeToJson(this);
}
