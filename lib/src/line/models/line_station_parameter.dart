class LineStationParameter {
  String? lineId;
  String? naptanId;

  LineStationParameter({
    this.lineId,
    this.naptanId,
  });

  factory LineStationParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    return LineStationParameter(
      lineId: json['lineId'] as String?,
      naptanId: json['naptanId'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lineId': lineId,
      'naptanId': naptanId,
    };
  }
}
