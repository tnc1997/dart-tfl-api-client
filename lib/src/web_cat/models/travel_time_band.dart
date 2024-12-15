class TravelTimeBand {
  int? travelTime;
  String? label;
  String? colourCode;
  String? hexCode;
  String? chartCode;
  int? lower;
  int? upper;

  TravelTimeBand({
    this.travelTime,
    this.label,
    this.colourCode,
    this.hexCode,
    this.chartCode,
    this.lower,
    this.upper,
  });

  factory TravelTimeBand.fromJson(
    Map<String, dynamic> json,
  ) {
    return TravelTimeBand(
      travelTime: (json['travelTime'] as num?)?.toInt(),
      label: json['label'] as String?,
      colourCode: json['colourCode'] as String?,
      hexCode: json['hexCode'] as String?,
      chartCode: json['chartCode'] as String?,
      lower: (json['lower'] as num?)?.toInt(),
      upper: (json['upper'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'travelTime': travelTime,
      'label': label,
      'colourCode': colourCode,
      'hexCode': hexCode,
      'chartCode': chartCode,
      'lower': lower,
      'upper': upper,
    };
  }
}
