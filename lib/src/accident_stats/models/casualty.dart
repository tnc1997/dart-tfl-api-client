class Casualty {
  int? age;
  String? class_;
  String? severity;
  String? mode;
  String? ageBand;

  Casualty({
    this.age,
    this.class_,
    this.severity,
    this.mode,
    this.ageBand,
  });

  factory Casualty.fromJson(
    Map<String, dynamic> json,
  ) {
    return Casualty(
      age: json['age'] as int?,
      class_: json['class'] as String?,
      severity: json['severity'] as String?,
      mode: json['mode'] as String?,
      ageBand: json['ageBand'] as String?,
    );
  }

  static List<Casualty> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Casualty.fromJson(value),
          )
          .toList();

  static Map<String, Casualty> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Casualty.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'age': age,
      'class': class_,
      'severity': severity,
      'mode': mode,
      'ageBand': ageBand,
    };
  }
}
