class FareStation {
  String? atcoCode;
  String? commonName;
  String? fareCategory;

  FareStation({
    this.atcoCode,
    this.commonName,
    this.fareCategory,
  });

  factory FareStation.fromJson(
    Map<String, dynamic> json,
  ) {
    return FareStation(
      atcoCode: json['atcoCode'] as String?,
      commonName: json['commonName'] as String?,
      fareCategory: json['fareCategory'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'atcoCode': atcoCode,
      'commonName': commonName,
      'fareCategory': fareCategory,
    };
  }
}
