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

  static List<RoadDisruptionSchedule> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RoadDisruptionSchedule.fromJson(value),
          )
          .toList();

  static Map<String, RoadDisruptionSchedule> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RoadDisruptionSchedule.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'startTime': startTime?.toIso8601String(),
      'endTime': endTime?.toIso8601String(),
    };
  }
}
