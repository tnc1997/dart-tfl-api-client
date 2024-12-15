class TravelTime {
  int? zoneId;
  double? time;

  TravelTime({
    this.zoneId,
    this.time,
  });

  factory TravelTime.fromJson(
    Map<String, dynamic> json,
  ) {
    return TravelTime(
      zoneId: (json['zoneId'] as num?)?.toInt(),
      time: (json['time'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'zoneId': zoneId,
      'time': time,
    };
  }
}
