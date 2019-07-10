import './timetables_disambiguation_option.dart';
import '../../internal/serializable.dart';

class TimetablesDisambiguation implements Serializable {
  List<TimetablesDisambiguationOption> disambiguationOptions;

  TimetablesDisambiguation({
    this.disambiguationOptions,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'disambiguationOptions': disambiguationOptions,
    };
  }

  @override
  String toString() {
    return 'TimetablesDisambiguation[disambiguationOptions=$disambiguationOptions]';
  }

  TimetablesDisambiguation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    disambiguationOptions = TimetablesDisambiguationOption.listFromJson(
        json['disambiguationOptions']);
  }

  static List<TimetablesDisambiguation> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<TimetablesDisambiguation>()
        : json
            .map((value) => TimetablesDisambiguation.fromJson(value))
            .toList();
  }

  static Map<String, TimetablesDisambiguation> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, TimetablesDisambiguation>()
        : json.map((key, value) =>
            MapEntry(key, TimetablesDisambiguation.fromJson(value)));
  }
}
