class FootPathElement {
  String? type;
  String? level;

  FootPathElement({
    this.type,
    this.level,
  });

  factory FootPathElement.fromJson(
    Map<String, dynamic> json,
  ) {
    return FootPathElement(
      type: json['type'] as String?,
      level: json['level'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'level': level,
    };
  }
}
