class StatusSeverityDropDown {
  int? id;
  String? modeName;
  int? severityLevel;
  String? description;

  StatusSeverityDropDown({
    this.id,
    this.modeName,
    this.severityLevel,
    this.description,
  });

  factory StatusSeverityDropDown.fromJson(
    Map<String, dynamic> json,
  ) {
    return StatusSeverityDropDown(
      id: (json['id'] as num?)?.toInt(),
      modeName: json['modeName'] as String?,
      severityLevel: (json['severityLevel'] as num?)?.toInt(),
      description: json['description'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'modeName': modeName,
      'severityLevel': severityLevel,
      'description': description,
    };
  }
}
