class TwentyFourHourClockTime {
  String? hour;
  String? minute;

  TwentyFourHourClockTime({
    this.hour,
    this.minute,
  });

  factory TwentyFourHourClockTime.fromJson(
    Map<String, dynamic> json,
  ) {
    return TwentyFourHourClockTime(
      hour: json['hour'] as String?,
      minute: json['minute'] as String?,
    );
  }

  static List<TwentyFourHourClockTime> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => TwentyFourHourClockTime.fromJson(value),
          )
          .toList();

  static Map<String, TwentyFourHourClockTime> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          TwentyFourHourClockTime.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'hour': hour,
      'minute': minute,
    };
  }
}
