class TrainLoading {
  String? line;
  String? lineDirection;
  String? platformDirection;
  String? direction;
  String? naptanTo;
  String? timeSlice;
  int? value;

  TrainLoading({
    this.line,
    this.lineDirection,
    this.platformDirection,
    this.direction,
    this.naptanTo,
    this.timeSlice,
    this.value,
  });

  factory TrainLoading.fromJson(
    Map<String, dynamic> json,
  ) {
    return TrainLoading(
      line: json['line'] as String?,
      lineDirection: json['lineDirection'] as String?,
      platformDirection: json['platformDirection'] as String?,
      direction: json['direction'] as String?,
      naptanTo: json['naptanTo'] as String?,
      timeSlice: json['timeSlice'] as String?,
      value: (json['value'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'line': line,
      'lineDirection': lineDirection,
      'platformDirection': platformDirection,
      'direction': direction,
      'naptanTo': naptanTo,
      'timeSlice': timeSlice,
      'value': value,
    };
  }
}
