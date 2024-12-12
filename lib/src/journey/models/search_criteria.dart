import 'time_adjustments.dart';

class SearchCriteria {
  DateTime? dateTime;
  String? dateTimeType;
  TimeAdjustments? timeAdjustments;

  SearchCriteria({
    this.dateTime,
    this.dateTimeType,
    this.timeAdjustments,
  });

  factory SearchCriteria.fromJson(
    Map<String, dynamic> json,
  ) {
    return SearchCriteria(
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      dateTimeType: json['dateTimeType'] as String?,
      timeAdjustments: json['timeAdjustments'] == null
          ? null
          : TimeAdjustments.fromJson(
              json['timeAdjustments'] as Map<String, dynamic>),
    );
  }

  static List<SearchCriteria> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => SearchCriteria.fromJson(value),
          )
          .toList();

  static Map<String, SearchCriteria> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          SearchCriteria.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'dateTime': dateTime?.toIso8601String(),
      'dateTimeType': dateTimeType,
      'timeAdjustments': timeAdjustments,
    };
  }
}
