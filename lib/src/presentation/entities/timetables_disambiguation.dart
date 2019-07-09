import './timetables_disambiguation_option.dart';

class TimetablesDisambiguation {
  List<TimetablesDisambiguationOption> disambiguationOptions;

  TimetablesDisambiguation();

  @override
  String toString() {
    return 'TimetablesDisambiguation[disambiguationOptions=$disambiguationOptions, ]';
  }

  TimetablesDisambiguation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    disambiguationOptions = TimetablesDisambiguationOption.listFromJson(
        json['disambiguationOptions']);
  }

  Map<String, dynamic> toJson() {
    return {'disambiguationOptions': disambiguationOptions};
  }

  static List<TimetablesDisambiguation> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<TimetablesDisambiguation>()
        : json
            .map((value) => new TimetablesDisambiguation.fromJson(value))
            .toList();
  }

  static Map<String, TimetablesDisambiguation> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TimetablesDisambiguation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new TimetablesDisambiguation.fromJson(value));
    }
    return map;
  }
}
