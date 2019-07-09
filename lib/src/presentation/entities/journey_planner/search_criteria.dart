import './time_adjustments.dart';

class SearchCriteria {
  DateTime dateTime;

  String dateTimeType;
  // enum dateTimeTypeEnum {  Arriving,  Departing,  };

  TimeAdjustments timeAdjustments;

  SearchCriteria();

  @override
  String toString() {
    return 'SearchCriteria[dateTime=$dateTime, dateTimeType=$dateTimeType, timeAdjustments=$timeAdjustments, ]';
  }

  SearchCriteria.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    dateTime =
        json['dateTime'] == null ? null : DateTime.parse(json['dateTime']);
    dateTimeType = json['dateTimeType'];
    timeAdjustments = TimeAdjustments.fromJson(json['timeAdjustments']);
  }

  Map<String, dynamic> toJson() {
    return {
      'dateTime': dateTime == null ? '' : dateTime.toUtc().toIso8601String(),
      'dateTimeType': dateTimeType,
      'timeAdjustments': timeAdjustments
    };
  }

  static List<SearchCriteria> listFromJson(List<dynamic> json) {
    return json == null
        ? List<SearchCriteria>()
        : json.map((value) => SearchCriteria.fromJson(value)).toList();
  }

  static Map<String, SearchCriteria> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, SearchCriteria>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = SearchCriteria.fromJson(value));
    }
    return map;
  }
}
