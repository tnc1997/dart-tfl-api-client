import 'matched_stop.dart';
import 'timetable.dart';
import 'timetable_disambiguation.dart';

class TimetableResponse {
  String? lineId;
  String? lineName;
  String? direction;
  String? pdfUrl;
  List<MatchedStop>? stations;
  List<MatchedStop>? stops;
  Timetable? timetable;
  TimetableDisambiguation? disambiguation;
  String? statusErrorMessage;

  TimetableResponse({
    this.lineId,
    this.lineName,
    this.direction,
    this.pdfUrl,
    this.stations,
    this.stops,
    this.timetable,
    this.disambiguation,
    this.statusErrorMessage,
  });

  factory TimetableResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return TimetableResponse(
      lineId: json['lineId'] as String?,
      lineName: json['lineName'] as String?,
      direction: json['direction'] as String?,
      pdfUrl: json['pdfUrl'] as String?,
      stations: (json['stations'] as List<dynamic>?)
          ?.map((e) => MatchedStop.fromJson(e as Map<String, dynamic>))
          .toList(),
      stops: (json['stops'] as List<dynamic>?)
          ?.map((e) => MatchedStop.fromJson(e as Map<String, dynamic>))
          .toList(),
      timetable: json['timetable'] == null
          ? null
          : Timetable.fromJson(json['timetable'] as Map<String, dynamic>),
      disambiguation: json['disambiguation'] == null
          ? null
          : TimetableDisambiguation.fromJson(
              json['disambiguation'] as Map<String, dynamic>),
      statusErrorMessage: json['statusErrorMessage'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lineId': lineId,
      'lineName': lineName,
      'direction': direction,
      'pdfUrl': pdfUrl,
      'stations': stations,
      'stops': stops,
      'timetable': timetable,
      'disambiguation': disambiguation,
      'statusErrorMessage': statusErrorMessage,
    };
  }
}
