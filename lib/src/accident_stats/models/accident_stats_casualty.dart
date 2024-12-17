class AccidentStatsCasualty {
  int? age;
  String? class_;
  String? severity;
  String? mode;
  String? ageBand;

  AccidentStatsCasualty({
    this.age,
    this.class_,
    this.severity,
    this.mode,
    this.ageBand,
  });

  factory AccidentStatsCasualty.fromJson(
    Map<String, dynamic> json,
  ) {
    return AccidentStatsCasualty(
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
