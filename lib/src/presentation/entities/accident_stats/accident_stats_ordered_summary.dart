import '../../../internal/serializable.dart';

class AccidentStatsOrderedSummary implements Serializable {
  int year;

  String borough;

  int accidents;

  AccidentStatsOrderedSummary({
    this.year,
    this.borough,
    this.accidents,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'year': year,
      'borough': borough,
      'accidents': accidents,
    };
  }

  @override
  String toString() {
    return 'AccidentStatsOrderedSummary[year=$year, borough=$borough, accidents=$accidents, ]';
  }

  AccidentStatsOrderedSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    year = json['year'];
    borough = json['borough'];
    accidents = json['accidents'];
  }

  static List<AccidentStatsOrderedSummary> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<AccidentStatsOrderedSummary>()
        : json
            .map((value) => AccidentStatsOrderedSummary.fromJson(value))
            .toList();
  }

  static Map<String, AccidentStatsOrderedSummary> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, AccidentStatsOrderedSummary>()
        : json.map((key, value) =>
            MapEntry(key, AccidentStatsOrderedSummary.fromJson(value)));
  }
}
