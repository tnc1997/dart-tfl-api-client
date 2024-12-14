class DisruptedPoint {
  String? atcoCode;
  DateTime? fromDate;
  DateTime? toDate;
  String? description;
  String? commonName;
  String? type;
  String? mode;
  String? stationAtcoCode;
  String? appearance;
  String? additionalInformation;

  DisruptedPoint({
    this.atcoCode,
    this.fromDate,
    this.toDate,
    this.description,
    this.commonName,
    this.type,
    this.mode,
    this.stationAtcoCode,
    this.appearance,
    this.additionalInformation,
  });

  factory DisruptedPoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return DisruptedPoint(
      atcoCode: json['atcoCode'] as String?,
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      description: json['description'] as String?,
      commonName: json['commonName'] as String?,
      type: json['type'] as String?,
      mode: json['mode'] as String?,
      stationAtcoCode: json['stationAtcoCode'] as String?,
      appearance: json['appearance'] as String?,
      additionalInformation: json['additionalInformation'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'atcoCode': atcoCode,
      'fromDate': fromDate?.toIso8601String(),
      'toDate': toDate?.toIso8601String(),
      'description': description,
      'commonName': commonName,
      'type': type,
      'mode': mode,
      'stationAtcoCode': stationAtcoCode,
      'appearance': appearance,
      'additionalInformation': additionalInformation,
    };
  }
}
