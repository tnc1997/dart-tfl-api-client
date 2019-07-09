class TimetablesDisambiguationOption {
  String description;

  String uri;

  TimetablesDisambiguationOption();

  @override
  String toString() {
    return 'TimetablesDisambiguationOption[description=$description, uri=$uri, ]';
  }

  TimetablesDisambiguationOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description = json['description'];
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    return {'description': description, 'uri': uri};
  }

  static List<TimetablesDisambiguationOption> listFromJson(List<dynamic> json) {
    return json == null
        ? List<TimetablesDisambiguationOption>()
        : json
            .map((value) => TimetablesDisambiguationOption.fromJson(value))
            .toList();
  }

  static Map<String, TimetablesDisambiguationOption> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, TimetablesDisambiguationOption>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = TimetablesDisambiguationOption.fromJson(value));
    }
    return map;
  }
}
