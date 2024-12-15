class PtalPoint {
  String? ptalValue;
  double? latitude;
  double? longitude;

  PtalPoint({
    this.ptalValue,
    this.latitude,
    this.longitude,
  });

  factory PtalPoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return PtalPoint(
      ptalValue: json['ptalValue'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ptalValue': ptalValue,
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}
