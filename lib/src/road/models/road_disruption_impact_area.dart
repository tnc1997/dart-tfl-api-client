class RoadDisruptionImpactArea {
  int? id;
  String? roadDisruptionId;
  DateTime? startDate;
  DateTime? endDate;
  String? startTime;
  String? endTime;

  RoadDisruptionImpactArea({
    this.id,
    this.roadDisruptionId,
    this.startDate,
    this.endDate,
    this.startTime,
    this.endTime,
  });

  factory RoadDisruptionImpactArea.fromJson(
    Map<String, dynamic> json,
  ) {
    return RoadDisruptionImpactArea(
      id: (json['id'] as num?)?.toInt(),
      roadDisruptionId: json['roadDisruptionId'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
    );
  }

  static List<RoadDisruptionImpactArea> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RoadDisruptionImpactArea.fromJson(value),
          )
          .toList();

  static Map<String, RoadDisruptionImpactArea> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RoadDisruptionImpactArea.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'roadDisruptionId': roadDisruptionId,
      'startDate': startDate?.toIso8601String(),
      'endDate': endDate?.toIso8601String(),
      'startTime': startTime,
      'endTime': endTime,
    };
  }
}
