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

  static List<FootPathElement> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => FootPathElement.fromJson(value),
          )
          .toList();

  static Map<String, FootPathElement> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          FootPathElement.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'level': level,
    };
  }
}
