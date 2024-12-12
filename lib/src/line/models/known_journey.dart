class KnownJourney {
  String? hour;
  String? minute;
  int? intervalId;

  KnownJourney({
    this.hour,
    this.minute,
    this.intervalId,
  });

  factory KnownJourney.fromJson(
    Map<String, dynamic> json,
  ) {
    return KnownJourney(
      hour: json['hour'] as String?,
      minute: json['minute'] as String?,
      intervalId: (json['intervalId'] as num?)?.toInt(),
    );
  }

  static List<KnownJourney> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => KnownJourney.fromJson(value),
          )
          .toList();

  static Map<String, KnownJourney> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          KnownJourney.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'hour': hour,
      'minute': minute,
      'intervalId': intervalId,
    };
  }
}
