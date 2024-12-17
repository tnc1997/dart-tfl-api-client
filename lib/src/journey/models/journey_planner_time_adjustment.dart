class JourneyPlannerTimeAdjustment {
  String? date;
  String? time;
  String? timeIs;
  String? uri;

  JourneyPlannerTimeAdjustment({
    this.date,
    this.time,
    this.timeIs,
    this.uri,
  });

  factory JourneyPlannerTimeAdjustment.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerTimeAdjustment(
      date: json['date'] as String?,
      time: json['time'] as String?,
      timeIs: json['timeIs'] as String?,
      uri: json['uri'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'time': time,
      'timeIs': timeIs,
      'uri': uri,
    };
  }
}
