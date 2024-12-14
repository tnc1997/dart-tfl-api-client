class RoadCorridor {
  String? id;
  String? displayName;
  String? group;
  String? statusSeverity;
  String? statusSeverityDescription;
  String? bounds;
  String? envelope;
  DateTime? statusAggregationStartDate;
  DateTime? statusAggregationEndDate;
  String? url;

  RoadCorridor({
    this.id,
    this.displayName,
    this.group,
    this.statusSeverity,
    this.statusSeverityDescription,
    this.bounds,
    this.envelope,
    this.statusAggregationStartDate,
    this.statusAggregationEndDate,
    this.url,
  });

  factory RoadCorridor.fromJson(
    Map<String, dynamic> json,
  ) {
    return RoadCorridor(
      id: json['id'] as String?,
      displayName: json['displayName'] as String?,
      group: json['group'] as String?,
      statusSeverity: json['statusSeverity'] as String?,
      statusSeverityDescription: json['statusSeverityDescription'] as String?,
      bounds: json['bounds'] as String?,
      envelope: json['envelope'] as String?,
      statusAggregationStartDate: json['statusAggregationStartDate'] == null
          ? null
          : DateTime.parse(json['statusAggregationStartDate'] as String),
      statusAggregationEndDate: json['statusAggregationEndDate'] == null
          ? null
          : DateTime.parse(json['statusAggregationEndDate'] as String),
      url: json['url'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'displayName': displayName,
      'group': group,
      'statusSeverity': statusSeverity,
      'statusSeverityDescription': statusSeverityDescription,
      'bounds': bounds,
      'envelope': envelope,
      'statusAggregationStartDate':
          statusAggregationStartDate?.toIso8601String(),
      'statusAggregationEndDate': statusAggregationEndDate?.toIso8601String(),
      'url': url,
    };
  }
}
