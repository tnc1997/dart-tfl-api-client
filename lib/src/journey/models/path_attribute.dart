class PathAttribute {
  String? name;
  String? value;

  PathAttribute({
    this.name,
    this.value,
  });

  factory PathAttribute.fromJson(
    Map<String, dynamic> json,
  ) {
    return PathAttribute(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );
  }

  static List<PathAttribute> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PathAttribute.fromJson(value),
          )
          .toList();

  static Map<String, PathAttribute> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PathAttribute.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value,
    };
  }
}
