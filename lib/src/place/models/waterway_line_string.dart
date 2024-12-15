class WaterwayLineString {
  String? placemarkId;
  String? lineString;

  WaterwayLineString({
    this.placemarkId,
    this.lineString,
  });

  factory WaterwayLineString.fromJson(
    Map<String, dynamic> json,
  ) {
    return WaterwayLineString(
      placemarkId: json['placemarkId'] as String?,
      lineString: json['lineString'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'placemarkId': placemarkId,
      'lineString': lineString,
    };
  }
}
