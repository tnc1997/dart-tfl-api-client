import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/web_cat/zone_statistic.dart';

part 'travel_time_statistic.g.dart';

@JsonSerializable()
class TravelTimeStatistic {
  int? lowerTravelTimeBand;
  int? upperTravelTimeBand;
  bool? catchmentOutsideLondonIncluded;
  List<ZoneStatistic>? statistics;

  TravelTimeStatistic({
    this.lowerTravelTimeBand,
    this.upperTravelTimeBand,
    this.catchmentOutsideLondonIncluded,
    this.statistics,
  });

  factory TravelTimeStatistic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TravelTimeStatisticFromJson(json);

  static List<TravelTimeStatistic> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => TravelTimeStatistic.fromJson(value),
          )
          .toList();

  static Map<String, TravelTimeStatistic> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          TravelTimeStatistic.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$TravelTimeStatisticToJson(this);
}
