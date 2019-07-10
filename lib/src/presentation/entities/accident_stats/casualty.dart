import '../../../internal/serializable.dart';

class Casualty implements Serializable {
  int age;

  String severity;

  String mode;

  String ageBand;

  Casualty({
    this.age,
    this.severity,
    this.mode,
    this.ageBand,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'age': age,
      'severity': severity,
      'mode': mode,
      'ageBand': ageBand,
    };
  }

  @override
  String toString() {
    return 'Casualty[age=$age, severity=$severity, mode=$mode, ageBand=$ageBand]';
  }

  Casualty.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    age = json['age'];
    severity = json['severity'];
    mode = json['mode'];
    ageBand = json['ageBand'];
  }

  static List<Casualty> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Casualty>()
        : json.map((value) => Casualty.fromJson(value)).toList();
  }

  static Map<String, Casualty> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Casualty>()
        : json.map((key, value) => MapEntry(key, Casualty.fromJson(value)));
  }
}
