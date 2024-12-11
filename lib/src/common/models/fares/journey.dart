import 'package:json_annotation/json_annotation.dart';

import 'fare_station.dart';

part 'journey.g.dart';

@JsonSerializable()
class Journey1 {
  FareStation? fromStation;
  FareStation? toStation;

  Journey1({
    this.fromStation,
    this.toStation,
  });

  factory Journey1.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$Journey1FromJson(json);

  static List<Journey1> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Journey1.fromJson(value),
          )
          .toList();

  static Map<String, Journey1> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Journey1.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$Journey1ToJson(this);
}
