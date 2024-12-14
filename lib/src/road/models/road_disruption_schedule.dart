class RoadDisruptionSchedule {
  DateTime? startTime;
  DateTime? endTime;

  RoadDisruptionSchedule({
    this.startTime,
    this.endTime,
  });

  factory RoadDisruptionSchedule.fromJson(
    Map<String, dynamic> json,
  ) {
    return RoadDisruptionSchedule(
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'startTime': startTime?.toIso8601String(),
      'endTime': endTime?.toIso8601String(),
    };
  }
}
