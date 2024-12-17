class JourneyPlannerJourneyVector {
  String? from;
  String? to;
  String? via;
  String? uri;

  JourneyPlannerJourneyVector({
    this.from,
    this.to,
    this.via,
    this.uri,
  });

  factory JourneyPlannerJourneyVector.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerJourneyVector(
      from: json['from'] as String?,
      to: json['to'] as String?,
      via: json['via'] as String?,
      uri: json['uri'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'from': from,
      'to': to,
      'via': via,
      'uri': uri,
    };
  }
}
