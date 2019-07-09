class AccidentStatsOrderedSummary {
  int year;

  String borough;

  int accidents;

  AccidentStatsOrderedSummary();

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

  Map<String, dynamic> toJson() {
    return {'year': year, 'borough': borough, 'accidents': accidents};
  }

  static List<AccidentStatsOrderedSummary> listFromJson(List<dynamic> json) {
    return json == null
        ? List<AccidentStatsOrderedSummary>()
        : json
            .map((value) => AccidentStatsOrderedSummary.fromJson(value))
            .toList();
  }

  static Map<String, AccidentStatsOrderedSummary> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, AccidentStatsOrderedSummary>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = AccidentStatsOrderedSummary.fromJson(value));
    }
    return map;
  }
}
