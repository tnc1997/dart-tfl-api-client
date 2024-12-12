class RoadDisruptionLine {
  int? id;
  String? roadDisruptionId;
  bool? isDiversion;
  DateTime? startDate;
  DateTime? endDate;
  String? startTime;
  String? endTime;

  RoadDisruptionLine({
    this.id,
    this.roadDisruptionId,
    this.isDiversion,
    this.startDate,
    this.endDate,
    this.startTime,
    this.endTime,
  });

  factory RoadDisruptionLine.fromJson(
    Map<String, dynamic> json,
  ) {
    return RoadDisruptionLine(
      id: (json['id'] as num?)?.toInt(),
      roadDisruptionId: json['roadDisruptionId'] as String?,
      isDiversion: json['isDiversion'] as bool?,
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

  static List<RoadDisruptionLine> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RoadDisruptionLine.fromJson(value),
          )
          .toList();

  static Map<String, RoadDisruptionLine> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RoadDisruptionLine.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'roadDisruptionId': roadDisruptionId,
      'isDiversion': isDiversion,
      'startDate': startDate?.toIso8601String(),
      'endDate': endDate?.toIso8601String(),
      'startTime': startTime,
      'endTime': endTime,
    };
  }
}
