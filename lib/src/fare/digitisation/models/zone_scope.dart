class ZoneScope {
  String? zoneFrom;
  String? zoneTo;
  String? description;

  ZoneScope({
    this.zoneFrom,
    this.zoneTo,
    this.description,
  });

  factory ZoneScope.fromJson(
    Map<String, dynamic> json,
  ) {
    return ZoneScope(
      zoneFrom: json['zoneFrom'] as String?,
      zoneTo: json['zoneTo'] as String?,
      description: json['description'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'zoneFrom': zoneFrom,
      'zoneTo': zoneTo,
      'description': description,
    };
  }
}
