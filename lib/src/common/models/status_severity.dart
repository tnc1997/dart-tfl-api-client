class StatusSeverity {
  String? modeName;
  int? severityLevel;
  String? description;

  StatusSeverity({
    this.modeName,
    this.severityLevel,
    this.description,
  });

  factory StatusSeverity.fromJson(
    Map<String, dynamic> json,
  ) {
    return StatusSeverity(
      modeName: json['modeName'] as String?,
      severityLevel: (json['severityLevel'] as num?)?.toInt(),
      description: json['description'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'modeName': modeName,
      'severityLevel': severityLevel,
      'description': description,
    };
  }
}
