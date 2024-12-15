class Waterway {
  int? id;
  int? placeId;
  String? description;
  String? key;

  Waterway({
    this.id,
    this.placeId,
    this.description,
    this.key,
  });

  factory Waterway.fromJson(
    Map<String, dynamic> json,
  ) {
    return Waterway(
      id: (json['id'] as num?)?.toInt(),
      placeId: (json['placeId'] as num?)?.toInt(),
      description: json['description'] as String?,
      key: json['key'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'placeId': placeId,
      'description': description,
      'key': key,
    };
  }
}
