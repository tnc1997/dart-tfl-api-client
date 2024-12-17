class JourneyPlannerFareCaveat {
  String? text;
  String? type;

  JourneyPlannerFareCaveat({
    this.text,
    this.type,
  });

  factory JourneyPlannerFareCaveat.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerFareCaveat(
      text: json['text'] as String?,
      type: json['type'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'type': type,
    };
  }
}
