class Interval {
  String? stopId;
  double? timeToArrival;

  Interval({
    this.stopId,
    this.timeToArrival,
  });

  factory Interval.fromJson(
    Map<String, dynamic> json,
  ) {
    return Interval(
      stopId: json['stopId'] as String?,
      timeToArrival: (json['timeToArrival'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'stopId': stopId,
      'timeToArrival': timeToArrival,
    };
  }
}
