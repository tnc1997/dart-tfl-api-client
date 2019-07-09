import './matched_stop.dart';
import './timetable.dart';
import './timetables_disambiguation.dart';

class TimetableResponse {
  String lineId;

  String lineName;

  String direction;

  String pdfUrl;

  List<MatchedStop> stations = [];

  List<MatchedStop> stops = [];

  Timetable timetable;

  TimetablesDisambiguation disambiguation;

  String statusErrorMessage;

  TimetableResponse();

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
      'statusErrorMessage': statusErrorMessage
    };
  }

  static List<TimetableResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? List<TimetableResponse>()
        : json.map((value) => TimetableResponse.fromJson(value)).toList();
  }

  static Map<String, TimetableResponse> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, TimetableResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = TimetableResponse.fromJson(value));
    }
    return map;
  }
}
