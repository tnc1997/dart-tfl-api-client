import '../../internal/serializable.dart';

class ServiceFrequency implements Serializable {
  double lowestFrequency;

  double highestFrequency;

  ServiceFrequency({
    this.lowestFrequency,
    this.highestFrequency,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'lowestFrequency': lowestFrequency,
      'highestFrequency': highestFrequency,
    };
  }

  @override
  String toString() {
    return 'ServiceFrequency[lowestFrequency=$lowestFrequency, highestFrequency=$highestFrequency]';
  }

  ServiceFrequency.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    lowestFrequency = json['lowestFrequency'];
    highestFrequency = json['highestFrequency'];
  }

  static List<ServiceFrequency> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<ServiceFrequency>()
        : json.map((value) => ServiceFrequency.fromJson(value)).toList();
  }

  static Map<String, ServiceFrequency> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, ServiceFrequency>()
        : json.map(
            (key, value) => MapEntry(key, ServiceFrequency.fromJson(value)));
  }
}
