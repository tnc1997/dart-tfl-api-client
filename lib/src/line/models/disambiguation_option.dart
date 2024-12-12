class DisambiguationOption2 {
  String? description;
  String? uri;

  DisambiguationOption2({
    this.description,
    this.uri,
  });

  factory DisambiguationOption2.fromJson(
    Map<String, dynamic> json,
  ) {
    return DisambiguationOption2(
      description: json['description'] as String?,
      uri: json['uri'] as String?,
    );
  }

  static List<DisambiguationOption2> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => DisambiguationOption2.fromJson(value),
          )
          .toList();

  static Map<String, DisambiguationOption2> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          DisambiguationOption2.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'uri': uri,
    };
  }
}
