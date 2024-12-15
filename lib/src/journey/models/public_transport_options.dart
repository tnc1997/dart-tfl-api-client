class PublicTransportOptions {
  int? maxChanges;
  String? routeType;

  PublicTransportOptions({
    this.maxChanges,
    this.routeType,
  });

  factory PublicTransportOptions.fromJson(
    Map<String, dynamic> json,
  ) {
    return PublicTransportOptions(
      maxChanges: (json['maxChanges'] as num?)?.toInt(),
      routeType: json['routeType'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'maxChanges': maxChanges,
      'routeType': routeType,
    };
  }
}
