// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_time_band.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelTimeBand _$TravelTimeBandFromJson(Map<String, dynamic> json) {
  return TravelTimeBand(
    travelTime: json['travelTime'] as int?,
    label: json['label'] as String?,
    colourCode: json['colourCode'] as String?,
    hexCode: json['hexCode'] as String?,
    chartCode: json['chartCode'] as String?,
    lower: json['lower'] as int?,
    upper: json['upper'] as int?,
  );
}

Map<String, dynamic> _$TravelTimeBandToJson(TravelTimeBand instance) =>
    <String, dynamic>{
      'travelTime': instance.travelTime,
      'label': instance.label,
      'colourCode': instance.colourCode,
      'hexCode': instance.hexCode,
      'chartCode': instance.chartCode,
      'lower': instance.lower,
      'upper': instance.upper,
    };
