class DisruptionOverride {
  int? id;
  String? lineId;
  int? statusSeverityId;
  String? description;
  String? lineName;
  String? modeName;

  DisruptionOverride({
    this.id,
    this.lineId,
    this.statusSeverityId,
    this.description,
    this.lineName,
    this.modeName,
  });

  factory DisruptionOverride.fromJson(
    Map<String, dynamic> json,
  ) {
    return DisruptionOverride(
      id: (json['id'] as num?)?.toInt(),
      lineId: json['lineId'] as String?,
      statusSeverityId: (json['statusSeverityId'] as num?)?.toInt(),
      description: json['description'] as String?,
      lineName: json['lineName'] as String?,
      modeName: json['modeName'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'lineId': lineId,
      'statusSeverityId': statusSeverityId,
      'description': description,
      'lineName': lineName,
      'modeName': modeName,
    };
  }
}
