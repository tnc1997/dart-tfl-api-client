import './matched_stop.dart';
import './timetable.dart';
import './timetables_disambiguation.dart';
import '../../internal/serializable.dart';

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

  @override
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

  @override
  String toString() {
    return 'TimetableResponse[lineId=$lineId, lineName=$lineName, direction=$direction, pdfUrl=$pdfUrl, stations=$stations, stops=$stops, timetable=$timetable, disambiguation=$disambiguation, statusErrorMessage=$statusErrorMessage, ]';
  }

  TimetableResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    lineId = json['lineId'];
    lineName = json['lineName'];
    direction = json['direction'];
    pdfUrl = json['pdfUrl'];
    stations = MatchedStop.listFromJson(json['stations']);
    stops = MatchedStop.listFromJson(json['stops']);
    timetable = Timetable.fromJson(json['timetable']);
    disambiguation = TimetablesDisambiguation.fromJson(json['disambiguation']);
    statusErrorMessage = json['statusErrorMessage'];
  }

  static List<TimetableResponse> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<TimetableResponse>()
        : json.map((value) => TimetableResponse.fromJson(value)).toList();
  }

  static Map<String, TimetableResponse> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, TimetableResponse>()
        : json.map(
            (key, value) => MapEntry(key, TimetableResponse.fromJson(value)));
  }
}
