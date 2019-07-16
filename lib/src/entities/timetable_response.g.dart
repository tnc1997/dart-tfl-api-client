// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimetableResponse _$TimetableResponseFromJson(Map<String, dynamic> json) {
  return TimetableResponse(
      lineId: json['lineId'] as String,
      lineName: json['lineName'] as String,
      direction: json['direction'] as String,
      pdfUrl: json['pdfUrl'] as String,
      stations: (json['stations'] as List)
          ?.map((e) => e == null
              ? null
              : MatchedStop.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      stops: (json['stops'] as List)
          ?.map((e) => e == null
              ? null
              : MatchedStop.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      timetable: json['timetable'] == null
          ? null
          : Timetable.fromJson(json['timetable'] as Map<String, dynamic>),
      disambiguation: json['disambiguation'] == null
          ? null
          : TimetablesDisambiguation.fromJson(
              json['disambiguation'] as Map<String, dynamic>),
      statusErrorMessage: json['statusErrorMessage'] as String);
}

Map<String, dynamic> _$TimetableResponseToJson(TimetableResponse instance) =>
    <String, dynamic>{
      'lineId': instance.lineId,
      'lineName': instance.lineName,
      'direction': instance.direction,
      'pdfUrl': instance.pdfUrl,
      'stations': instance.stations,
      'stops': instance.stops,
      'timetable': instance.timetable,
      'disambiguation': instance.disambiguation,
      'statusErrorMessage': instance.statusErrorMessage
    };
