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

  Map<String, dynamic> toJson() {
    return {
      'toid': toid,
      'lineString': lineString,
      'sourceSystemId': sourceSystemId,
      'sourceSystemKey': sourceSystemKey,
    };
  }
}
