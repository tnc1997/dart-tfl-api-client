import 'package:json_annotation/json_annotation.dart';

part 'time_adjustment.g.dart';

@JsonSerializable()
class TimeAdjustment {
  String? date;
  String? time;
  String? timeIs;
  String? uri;

  TimeAdjustment({
    this.date,
    this.time,
    this.timeIs,
    this.uri,
  });

  factory TimeAdjustment.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TimeAdjustmentFromJson(json);

  static List<TimeAdjustment> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => TimeAdjustment.fromJson(value),
          )
          .toList();

  static Map<String, TimeAdjustment> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          TimeAdjustment.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$TimeAdjustmentToJson(this);
}
