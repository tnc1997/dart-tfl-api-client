import 'package:json_annotation/json_annotation.dart';

part 'interval.g.dart';

@JsonSerializable()
class Interval {
  String? stopId;
  double? timeToArrival;

  Interval({
    this.stopId,
    this.timeToArrival,
  });

  factory Interval.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IntervalFromJson(json);

  static List<Interval> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Interval.fromJson(value),
          )
          .toList();

  static Map<String, Interval> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Interval.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$IntervalToJson(this);
}
