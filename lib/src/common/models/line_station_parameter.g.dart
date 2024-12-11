// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_station_parameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineStationParameter _$LineStationParameterFromJson(Map<String, dynamic> json) {
  return LineStationParameter(
    lineId: json['lineId'] as String?,
    naptanId: json['naptanId'] as String?,
  );
}

Map<String, dynamic> _$LineStationParameterToJson(
        LineStationParameter instance) =>
    <String, dynamic>{
      'lineId': instance.lineId,
      'naptanId': instance.naptanId,
    };
