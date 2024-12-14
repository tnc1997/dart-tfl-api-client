class Mode {
  bool? isTflService;
  bool? isFarePaying;
  bool? isScheduledService;
  String? modeName;

  Mode({
    this.isTflService,
    this.isFarePaying,
    this.isScheduledService,
    this.modeName,
  });

  factory Mode.fromJson(
    Map<String, dynamic> json,
  ) {
    return Mode(
      isTflService: json['isTflService'] as bool?,
      isFarePaying: json['isFarePaying'] as bool?,
      isScheduledService: json['isScheduledService'] as bool?,
      modeName: json['modeName'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'isTflService': isTflService,
      'isFarePaying': isFarePaying,
      'isScheduledService': isScheduledService,
      'modeName': modeName,
    };
  }
}
