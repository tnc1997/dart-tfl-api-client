class CanalPlacemark {
  int? id;
  String? placemarkId;
  String? name;
  String? coordinates;

  CanalPlacemark({
    this.id,
    this.placemarkId,
    this.name,
    this.coordinates,
  });

  factory CanalPlacemark.fromJson(
    Map<String, dynamic> json,
  ) {
    return CanalPlacemark(
      id: (json['id'] as num?)?.toInt(),
      placemarkId: json['placemarkId'] as String?,
      name: json['name'] as String?,
      coordinates: json['coordinates'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'placemarkId': placemarkId,
      'name': name,
      'coordinates': coordinates,
    };
  }
}
