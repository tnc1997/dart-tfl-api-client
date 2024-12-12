﻿import 'time_adjustment.dart';

class TimeAdjustments {
  TimeAdjustment? earliest;
  TimeAdjustment? earlier;
  TimeAdjustment? later;
  TimeAdjustment? latest;

  TimeAdjustments({
    this.earliest,
    this.earlier,
    this.later,
    this.latest,
  });

  factory TimeAdjustments.fromJson(
    Map<String, dynamic> json,
  ) {
    return TimeAdjustments(
      earliest: json['earliest'] == null
          ? null
          : TimeAdjustment.fromJson(json['earliest'] as Map<String, dynamic>),
      earlier: json['earlier'] == null
          ? null
          : TimeAdjustment.fromJson(json['earlier'] as Map<String, dynamic>),
      later: json['later'] == null
          ? null
          : TimeAdjustment.fromJson(json['later'] as Map<String, dynamic>),
      latest: json['latest'] == null
          ? null
          : TimeAdjustment.fromJson(json['latest'] as Map<String, dynamic>),
    );
  }

  static List<TimeAdjustments> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => TimeAdjustments.fromJson(value),
          )
          .toList();

  static Map<String, TimeAdjustments> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          TimeAdjustments.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'earliest': earliest,
      'earlier': earlier,
      'later': later,
      'latest': latest,
    };
  }
}
