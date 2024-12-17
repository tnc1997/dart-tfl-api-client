class JourneyPlannerMapItem {
  String? uri;
  String? type;
  int? size;

  JourneyPlannerMapItem({
    this.uri,
    this.type,
    this.size,
  });

  factory JourneyPlannerMapItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerMapItem(
      uri: json['uri'] as String?,
      type: json['type'] as String?,
      size: (json['size'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'type': type,
      'size': size,
    };
  }
}
