import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'matched_stop.dart';
import 'timetable.dart';
import 'timetables_disambiguation.dart';

part 'timetable_response.g.dart';

@JsonSerializable()
class TimetableResponse implements Serializable {
  String lineId;

  String lineName;

  String direction;

  String pdfUrl;

  List<MatchedStop> stations;

  List<MatchedStop> stops;

  Timetable timetable;

  TimetablesDisambiguation disambiguation;

  String statusErrorMessage;

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

  factory TimetableResponse.fromJson(Map<String, dynamic> json) {
    return _$TimetableResponseFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TimetableResponseToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
