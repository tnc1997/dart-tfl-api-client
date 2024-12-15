class TimetableJourney {
  int? hour;
  int? minute;

  TimetableJourney({
    this.hour,
    this.minute,
  });

  factory TimetableJourney.fromJson(
    Map<String, dynamic> json,
  ) {
    return TimetableJourney(
      hour: (json['hour'] as num?)?.toInt(),
      minute: (json['minute'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'hour': hour,
      'minute': minute,
    };
  }
}
