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

  static List<Interval> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Interval.fromJson(value),
          )
          .toList();

  static Map<String, Interval> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Interval.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'stopId': stopId,
      'timeToArrival': timeToArrival,
    };
  }
}
