import 'package:json_annotation/json_annotation.dart';

import 'disambiguation.dart';
import 'matched_stop.dart';
import 'timetable.dart';

part 'timetable_response.g.dart';

@JsonSerializable()
class TimetableResponse {
  String? lineId;
  String? lineName;
  String? direction;
  String? pdfUrl;
  List<MatchedStop>? stations;
  List<MatchedStop>? stops;
  Timetable? timetable;
  Disambiguation2? disambiguation;
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
  ) =>
      _$TimetableResponseFromJson(json);

  static List<TimetableResponse> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => TimetableResponse.fromJson(value),
          )
          .toList();

  static Map<String, TimetableResponse> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          TimetableResponse.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$TimetableResponseToJson(this);
}
