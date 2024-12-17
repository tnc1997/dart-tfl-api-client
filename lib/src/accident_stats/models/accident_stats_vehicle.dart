class AccidentStatsVehicle {
  String? type;

  AccidentStatsVehicle({
    this.type,
  });

  factory AccidentStatsVehicle.fromJson(
    Map<String, dynamic> json,
  ) {
    return AccidentStatsVehicle(
      type: json['type'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
    };
  }
}
