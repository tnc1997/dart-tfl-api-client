import 'package:json_annotation/json_annotation.dart';
import 'interval.dart';

part 'station_interval.g.dart';

@JsonSerializable()
class StationInterval {
  String? id;
  List<Interval>? intervals;

  StationInterval({
    this.id,
    this.intervals,
  });

  factory StationInterval.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StationIntervalFromJson(json);

  static List<StationInterval> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => StationInterval.fromJson(value),
          )
          .toList();

  static Map<String, StationInterval> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          StationInterval.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$StationIntervalToJson(this);
}
