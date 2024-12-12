class ServiceFrequency {
  double? lowestFrequency;
  double? highestFrequency;

  ServiceFrequency({
    this.lowestFrequency,
    this.highestFrequency,
  });

  factory ServiceFrequency.fromJson(
    Map<String, dynamic> json,
  ) {
    return ServiceFrequency(
      lowestFrequency: (json['lowestFrequency'] as num?)?.toDouble(),
      highestFrequency: (json['highestFrequency'] as num?)?.toDouble(),
    );
  }

  static List<ServiceFrequency> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ServiceFrequency.fromJson(value),
          )
          .toList();

  static Map<String, ServiceFrequency> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ServiceFrequency.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'lowestFrequency': lowestFrequency,
      'highestFrequency': highestFrequency,
    };
  }
}
