class LineGroup {
  String? naptanIdReference;
  String? stationAtcoCode;
  List<String>? lineIdentifier;

  LineGroup({
    this.naptanIdReference,
    this.stationAtcoCode,
    this.lineIdentifier,
  });

  factory LineGroup.fromJson(
    Map<String, dynamic> json,
  ) {
    return LineGroup(
      naptanIdReference: json['naptanIdReference'] as String?,
      stationAtcoCode: json['stationAtcoCode'] as String?,
      lineIdentifier: (json['lineIdentifier'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'naptanIdReference': naptanIdReference,
      'stationAtcoCode': stationAtcoCode,
      'lineIdentifier': lineIdentifier,
    };
  }
}
