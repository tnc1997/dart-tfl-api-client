class RoadDisruptionTdmExtension {
  String? roadDisruptionId;
  String? relatedDisruptionId;
  String? tdmCategory;
  String? timeframe;
  DateTime? publishStartDate;
  DateTime? publishEndDate;

  RoadDisruptionTdmExtension({
    this.roadDisruptionId,
    this.relatedDisruptionId,
    this.tdmCategory,
    this.timeframe,
    this.publishStartDate,
    this.publishEndDate,
  });

  factory RoadDisruptionTdmExtension.fromJson(
    Map<String, dynamic> json,
  ) {
    return RoadDisruptionTdmExtension(
      roadDisruptionId: json['roadDisruptionId'] as String?,
      relatedDisruptionId: json['relatedDisruptionId'] as String?,
      tdmCategory: json['tdmCategory'] as String?,
      timeframe: json['timeframe'] as String?,
      publishStartDate: json['publishStartDate'] == null
          ? null
          : DateTime.parse(json['publishStartDate'] as String),
      publishEndDate: json['publishEndDate'] == null
          ? null
          : DateTime.parse(json['publishEndDate'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'roadDisruptionId': roadDisruptionId,
      'relatedDisruptionId': relatedDisruptionId,
      'tdmCategory': tdmCategory,
      'timeframe': timeframe,
      'publishStartDate': publishStartDate?.toIso8601String(),
      'publishEndDate': publishEndDate?.toIso8601String(),
    };
  }
}
