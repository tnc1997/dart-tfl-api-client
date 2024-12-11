import 'package:json_annotation/json_annotation.dart';

part 'time_table_journey.g.dart';

@JsonSerializable()
class TimeTableJourney {
  int? hour;
  int? minute;

  TimeTableJourney({
    this.hour,
    this.minute,
  });

  factory TimeTableJourney.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TimeTableJourneyFromJson(json);

  static List<TimeTableJourney> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => TimeTableJourney.fromJson(value),
          )
          .toList();

  static Map<String, TimeTableJourney> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          TimeTableJourney.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$TimeTableJourneyToJson(this);
}
