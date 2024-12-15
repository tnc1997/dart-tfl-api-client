class FaresMode {
  int? id;
  String? name;
  String? description;

  FaresMode({
    this.id,
    this.name,
    this.description,
  });

  factory FaresMode.fromJson(
    Map<String, dynamic> json,
  ) {
    return FaresMode(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
    };
  }
}
