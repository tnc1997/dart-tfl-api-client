﻿class ValidityPeriod {
  DateTime? fromDate;
  DateTime? toDate;
  bool? isNow;

  ValidityPeriod({
    this.fromDate,
    this.toDate,
    this.isNow,
  });

  factory ValidityPeriod.fromJson(
    Map<String, dynamic> json,
  ) {
    return ValidityPeriod(
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      isNow: json['isNow'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fromDate': fromDate?.toIso8601String(),
      'toDate': toDate?.toIso8601String(),
      'isNow': isNow,
    };
  }
}
