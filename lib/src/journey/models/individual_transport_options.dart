class IndividualTransportOptions {
  String? walkingSpeed;
  String? cycleType;
  bool? wheelchair;
  String? arrivalMeansOfTransport;
  int? arrivalMeansOfTransportMaximumTime;
  String? departureMeansOfTransport;
  int? departureMeansOfTransportMaximumTime;
  String? meansOfTransport;
  int? meansOfTransportMaximumTime;

  IndividualTransportOptions({
    this.walkingSpeed,
    this.cycleType,
    this.wheelchair,
    this.arrivalMeansOfTransport,
    this.arrivalMeansOfTransportMaximumTime,
    this.departureMeansOfTransport,
    this.departureMeansOfTransportMaximumTime,
    this.meansOfTransport,
    this.meansOfTransportMaximumTime,
  });

  factory IndividualTransportOptions.fromJson(
    Map<String, dynamic> json,
  ) {
    return IndividualTransportOptions(
      walkingSpeed: json['walkingSpeed'] as String?,
      cycleType: json['cycleType'] as String?,
      wheelchair: json['wheelchair'] as bool?,
      arrivalMeansOfTransport: json['arrivalMeansOfTransport'] as String?,
      arrivalMeansOfTransportMaximumTime:
          json['arrivalMeansOfTransportMaximumTime'] as int?,
      departureMeansOfTransport: json['departureMeansOfTransport'] as String?,
      departureMeansOfTransportMaximumTime:
          json['departureMeansOfTransportMaximumTime'] as int?,
      meansOfTransport: json['meansOfTransport'] as String?,
      meansOfTransportMaximumTime: json['meansOfTransportMaximumTime'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'walkingSpeed': walkingSpeed,
      'cycleType': cycleType,
      'wheelchair': wheelchair,
      'arrivalMeansOfTransport': arrivalMeansOfTransport,
      'arrivalMeansOfTransportMaximumTime': arrivalMeansOfTransportMaximumTime,
      'departureMeansOfTransport': departureMeansOfTransport,
      'departureMeansOfTransportMaximumTime':
          departureMeansOfTransportMaximumTime,
      'meansOfTransport': meansOfTransport,
      'meansOfTransportMaximumTime': meansOfTransportMaximumTime,
    };
  }
}
