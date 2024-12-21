class CoordinateReferenceSystemProperties {
  String? name;

  CoordinateReferenceSystemProperties({
    this.name,
  });

  factory CoordinateReferenceSystemProperties.fromJson(
    Map<String, dynamic> json,
  ) {
    return CoordinateReferenceSystemProperties(
      name: json['name'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
    };
  }
}
