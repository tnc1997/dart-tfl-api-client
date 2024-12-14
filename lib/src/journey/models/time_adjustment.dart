class TimeAdjustment {
  String? date;
  String? time;
  String? timeIs;
  String? uri;

  TimeAdjustment({
    this.date,
    this.time,
    this.timeIs,
    this.uri,
  });

  factory TimeAdjustment.fromJson(
    Map<String, dynamic> json,
  ) {
    return TimeAdjustment(
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
