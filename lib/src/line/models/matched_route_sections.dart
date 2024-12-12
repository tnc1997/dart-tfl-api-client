class MatchedRouteSections {
  int? id;

  MatchedRouteSections({
    this.id,
  });

  factory MatchedRouteSections.fromJson(
    Map<String, dynamic> json,
  ) {
    return MatchedRouteSections(
      id: (json['id'] as num?)?.toInt(),
    );
  }

  static List<MatchedRouteSections> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => MatchedRouteSections.fromJson(value),
          )
          .toList();

  static Map<String, MatchedRouteSections> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          MatchedRouteSections.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
    };
  }
}
