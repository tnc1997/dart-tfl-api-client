import 'package:json_annotation/json_annotation.dart';

part 'travel_time.g.dart';

@JsonSerializable()
class TravelTime {
  int? zoneId;
  double? time;

  TravelTime({
    this.zoneId,
    this.time,
  });

  factory TravelTime.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TravelTimeFromJson(json);

  static List<TravelTime> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => TravelTime.fromJson(value),
          )
          .toList();

  static Map<String, TravelTime> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          TravelTime.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$TravelTimeToJson(this);
}
