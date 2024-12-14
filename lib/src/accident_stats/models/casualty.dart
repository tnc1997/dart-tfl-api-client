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
