// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_time_statistic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelTimeStatistic _$TravelTimeStatisticFromJson(Map<String, dynamic> json) {
  return TravelTimeStatistic(
    lowerTravelTimeBand: json['lowerTravelTimeBand'] as int?,
    upperTravelTimeBand: json['upperTravelTimeBand'] as int?,
    catchmentOutsideLondonIncluded:
        json['catchmentOutsideLondonIncluded'] as bool?,
    statistics: (json['statistics'] as List<dynamic>?)
        ?.map((e) => ZoneStatistic.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TravelTimeStatisticToJson(
        TravelTimeStatistic instance) =>
    <String, dynamic>{
      'lowerTravelTimeBand': instance.lowerTravelTimeBand,
      'upperTravelTimeBand': instance.upperTravelTimeBand,
      'catchmentOutsideLondonIncluded': instance.catchmentOutsideLondonIncluded,
      'statistics': instance.statistics,
    };
