class ServiceFrequency {
  double lowestFrequency;

  double highestFrequency;

  ServiceFrequency();

  @override
  String toString() {
    return 'ServiceFrequency[lowestFrequency=$lowestFrequency, highestFrequency=$highestFrequency, ]';
  }

  ServiceFrequency.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lowestFrequency = json['lowestFrequency'];
    highestFrequency = json['highestFrequency'];
  }

  Map<String, dynamic> toJson() {
    return {
      'lowestFrequency': lowestFrequency,
      'highestFrequency': highestFrequency
    };
  }

  static List<ServiceFrequency> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ServiceFrequency>()
        : json.map((value) => new ServiceFrequency.fromJson(value)).toList();
  }

  static Map<String, ServiceFrequency> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServiceFrequency>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ServiceFrequency.fromJson(value));
    }
    return map;
  }
}
