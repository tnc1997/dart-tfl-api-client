class PlannedWork {
  String? id;
  String? description;
  DateTime? createdDateTime;
  DateTime? lastUpdateDateTime;

  PlannedWork({
    this.id,
    this.description,
    this.createdDateTime,
    this.lastUpdateDateTime,
  });

  factory PlannedWork.fromJson(
    Map<String, dynamic> json,
  ) {
    return PlannedWork(
      id: json['id'] as String?,
      description: json['description'] as String?,
      createdDateTime: json['createdDateTime'] == null
          ? null
          : DateTime.parse(json['createdDateTime'] as String),
      lastUpdateDateTime: json['lastUpdateDateTime'] == null
          ? null
          : DateTime.parse(json['lastUpdateDateTime'] as String),
    );
  }

  static List<PlannedWork> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PlannedWork.fromJson(value),
          )
          .toList();

  static Map<String, PlannedWork> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PlannedWork.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'createdDateTime': createdDateTime?.toIso8601String(),
      'lastUpdateDateTime': lastUpdateDateTime?.toIso8601String(),
    };
  }
}
