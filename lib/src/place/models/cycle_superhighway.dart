class CycleSuperhighway {
  String? id;
  String? label;
  String? labelShort;
  bool? segmented;
  DateTime? modified;
  String? status;
  String? routeType;

  CycleSuperhighway({
    this.id,
    this.label,
    this.labelShort,
    this.segmented,
    this.modified,
    this.status,
    this.routeType,
  });

  factory CycleSuperhighway.fromJson(
    Map<String, dynamic> json,
  ) {
    return CycleSuperhighway(
      id: json['id'] as String?,
      label: json['label'] as String?,
      labelShort: json['labelShort'] as String?,
      segmented: json['segmented'] as bool?,
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
      status: json['status'] as String?,
      routeType: json['routeType'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'label': label,
      'labelShort': labelShort,
      'segmented': segmented,
      'modified': modified?.toIso8601String(),
      'status': status,
      'routeType': routeType,
    };
  }
}
