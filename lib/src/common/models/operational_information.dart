class OperationalInformation {
  String? direction;
  String? lineId;

  OperationalInformation({
    this.direction,
    this.lineId,
  });

  factory OperationalInformation.fromJson(
    Map<String, dynamic> json,
  ) {
    return OperationalInformation(
      direction: json['direction'] as String?,
      lineId: json['lineId'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'direction': direction,
      'lineId': lineId,
    };
  }
}
