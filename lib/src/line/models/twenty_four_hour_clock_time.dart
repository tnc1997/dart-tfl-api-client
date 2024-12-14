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

  Map<String, dynamic> toJson() {
    return {
      'hour': hour,
      'minute': minute,
    };
  }
}
