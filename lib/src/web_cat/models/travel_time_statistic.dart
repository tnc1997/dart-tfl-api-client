import 'zone_statistic.dart';

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
  ) {
    return TravelTimeStatistic(
      lowerTravelTimeBand: (json['lowerTravelTimeBand'] as num?)?.toInt(),
      upperTravelTimeBand: (json['upperTravelTimeBand'] as num?)?.toInt(),
      catchmentOutsideLondonIncluded:
          json['catchmentOutsideLondonIncluded'] as bool?,
      statistics: (json['statistics'] as List<dynamic>?)
          ?.map((e) => ZoneStatistic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lowerTravelTimeBand': lowerTravelTimeBand,
      'upperTravelTimeBand': upperTravelTimeBand,
      'catchmentOutsideLondonIncluded': catchmentOutsideLondonIncluded,
      'statistics': statistics,
    };
  }
}
