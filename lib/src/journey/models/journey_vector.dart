class JourneyVector {
  String? from;
  String? to;
  String? via;
  String? uri;

  JourneyVector({
    this.from,
    this.to,
    this.via,
    this.uri,
  });

  factory JourneyVector.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyVector(
      from: json['from'] as String?,
      to: json['to'] as String?,
      via: json['via'] as String?,
      uri: json['uri'] as String?,
    );
  }

  static List<JourneyVector> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => JourneyVector.fromJson(value),
          )
          .toList();

  static Map<String, JourneyVector> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          JourneyVector.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'from': from,
      'to': to,
      'via': via,
      'uri': uri,
    };
  }
}
