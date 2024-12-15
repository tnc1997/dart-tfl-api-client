class AccidentStatsOrderedSummary {
  int? year;
  String? borough;
  int? accidents;

  AccidentStatsOrderedSummary({
    this.year,
    this.borough,
    this.accidents,
  });

  factory AccidentStatsOrderedSummary.fromJson(
    Map<String, dynamic> json,
  ) {
    return AccidentStatsOrderedSummary(
      year: (json['year'] as num?)?.toInt(),
      borough: json['borough'] as String?,
      accidents: (json['accidents'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'year': year,
      'borough': borough,
      'accidents': accidents,
    };
  }
}
