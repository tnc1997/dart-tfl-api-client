class Casualty {
  int age;

  String severity;

  String mode;

  String ageBand;

  Casualty();

  @override
  String toString() {
    return 'Casualty[age=$age, severity=$severity, mode=$mode, ageBand=$ageBand, ]';
  }

  Casualty.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    age = json['age'];
    severity = json['severity'];
    mode = json['mode'];
    ageBand = json['ageBand'];
  }

  Map<String, dynamic> toJson() {
    return {'age': age, 'severity': severity, 'mode': mode, 'ageBand': ageBand};
  }

  static List<Casualty> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Casualty>()
        : json.map((value) => Casualty.fromJson(value)).toList();
  }

  static Map<String, Casualty> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, Casualty>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = Casualty.fromJson(value));
    }
    return map;
  }
}
