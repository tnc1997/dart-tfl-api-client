class GeoJsonObject {
  String? type;
  List<Object>? coordinates;

  GeoJsonObject({
    this.type,
    this.coordinates,
  });

  factory GeoJsonObject.fromJson(
    Map<String, dynamic> json,
  ) {
    return GeoJsonObject(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'coordinates': coordinates,
    };
  }
}
