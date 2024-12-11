import 'package:json_annotation/json_annotation.dart';

import 'journey_fare.dart';
import 'leg.dart';

part 'journey.g.dart';

@JsonSerializable()
class Journey2 {
  DateTime? startDateTime;
  int? duration;
  DateTime? arrivalDateTime;
  List<Leg>? legs;
  JourneyFare? fare;

  Journey2({
    this.startDateTime,
    this.duration,
    this.arrivalDateTime,
    this.legs,
    this.fare,
  });

  factory Journey2.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$Journey2FromJson(json);

  static List<Journey2> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Journey2.fromJson(value),
          )
          .toList();

  static Map<String, Journey2> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Journey2.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$Journey2ToJson(this);
}
