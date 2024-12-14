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

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value,
    };
  }
}
