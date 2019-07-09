import '../../internal/serializable.dart';

class TimetablesDisambiguationOption implements Serializable {
  String description;

  String uri;

  TimetablesDisambiguationOption({
    this.description,
    this.uri,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'uri': uri,
    };
  }

  @override
  String toString() {
    return 'TimetablesDisambiguationOption[description=$description, uri=$uri, ]';
  }

  TimetablesDisambiguationOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    description = json['description'];
    uri = json['uri'];
  }

  static List<TimetablesDisambiguationOption> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<TimetablesDisambiguationOption>()
        : json
            .map((value) => TimetablesDisambiguationOption.fromJson(value))
            .toList();
  }

  static Map<String, TimetablesDisambiguationOption> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, TimetablesDisambiguationOption>()
        : json.map((key, value) =>
            MapEntry(key, TimetablesDisambiguationOption.fromJson(value)));
  }
}
