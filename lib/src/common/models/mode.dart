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

  static List<Mode> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Mode.fromJson(value),
          )
          .toList();

  static Map<String, Mode> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Mode.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'isTflService': isTflService,
      'isFarePaying': isFarePaying,
      'isScheduledService': isScheduledService,
      'modeName': modeName,
    };
  }
}
