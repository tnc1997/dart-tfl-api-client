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

  Map<String, dynamic> toJson() {
    return {
      'lowestFrequency': lowestFrequency,
      'highestFrequency': highestFrequency,
    };
  }
}
