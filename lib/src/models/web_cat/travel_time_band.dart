import 'package:json_annotation/json_annotation.dart';

part 'travel_time_band.g.dart';

@JsonSerializable()
class TravelTimeBand {
  int? travelTime;
  String? label;
  String? colourCode;
  String? hexCode;
  String? chartCode;
  int? lower;
  int? upper;

  TravelTimeBand({
    this.travelTime,
    this.label,
    this.colourCode,
    this.hexCode,
    this.chartCode,
    this.lower,
    this.upper,
  });

  factory TravelTimeBand.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TravelTimeBandFromJson(json);

  static List<TravelTimeBand> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => TravelTimeBand.fromJson(value),
          )
          .toList();

  static Map<String, TravelTimeBand> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          TravelTimeBand.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$TravelTimeBandToJson(this);
}
