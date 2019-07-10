import './time_adjustments.dart';
import '../../../internal/serializable.dart';

class SearchCriteria implements Serializable {
  DateTime dateTime;

  String dateTimeType;
  // enum dateTimeTypeEnum {  Arriving,  Departing,  };

  TimeAdjustments timeAdjustments;

  SearchCriteria({
    this.dateTime,
    this.dateTimeType,
    this.timeAdjustments,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'dateTime': dateTime == null ? '' : dateTime.toUtc().toIso8601String(),
      'dateTimeType': dateTimeType,
      'timeAdjustments': timeAdjustments,
    };
  }

  @override
  String toString() {
    return 'SearchCriteria[dateTime=$dateTime, dateTimeType=$dateTimeType, timeAdjustments=$timeAdjustments]';
  }

  SearchCriteria.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    dateTime =
        json['dateTime'] == null ? null : DateTime.parse(json['dateTime']);
    dateTimeType = json['dateTimeType'];
    timeAdjustments = TimeAdjustments.fromJson(json['timeAdjustments']);
  }

  static List<SearchCriteria> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<SearchCriteria>()
        : json.map((value) => SearchCriteria.fromJson(value)).toList();
  }

  static Map<String, SearchCriteria> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, SearchCriteria>()
        : json
            .map((key, value) => MapEntry(key, SearchCriteria.fromJson(value)));
  }
}
