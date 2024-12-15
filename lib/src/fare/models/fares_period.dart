class FaresPeriod {
  int? id;
  DateTime? startDate;
  DateTime? viewableDate;
  DateTime? endDate;
  bool? isFuture;

  FaresPeriod({
    this.id,
    this.startDate,
    this.viewableDate,
    this.endDate,
    this.isFuture,
  });

  factory FaresPeriod.fromJson(
    Map<String, dynamic> json,
  ) {
    return FaresPeriod(
      id: (json['id'] as num?)?.toInt(),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      viewableDate: json['viewableDate'] == null
          ? null
          : DateTime.parse(json['viewableDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      isFuture: json['isFuture'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'startDate': startDate?.toIso8601String(),
      'viewableDate': viewableDate?.toIso8601String(),
      'endDate': endDate?.toIso8601String(),
      'isFuture': isFuture,
    };
  }
}
