class StreetSegment {
  String? toid;
  String? lineString;
  int? sourceSystemId;
  String? sourceSystemKey;

  StreetSegment({
    this.toid,
    this.lineString,
    this.sourceSystemId,
    this.sourceSystemKey,
  });

  factory StreetSegment.fromJson(
    Map<String, dynamic> json,
  ) {
    return StreetSegment(
      toid: json['toid'] as String?,
      lineString: json['lineString'] as String?,
      sourceSystemId: (json['sourceSystemId'] as num?)?.toInt(),
      sourceSystemKey: json['sourceSystemKey'] as String?,
    );
  }

  static List<StreetSegment> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => StreetSegment.fromJson(value),
          )
          .toList();

  static Map<String, StreetSegment> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          StreetSegment.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'toid': toid,
      'lineString': lineString,
      'sourceSystemId': sourceSystemId,
      'sourceSystemKey': sourceSystemKey,
    };
  }
}
