class VehicleMatch {
  String? vrm;
  String? type;
  String? make;
  String? model;
  String? colour;
  String? compliance;

  VehicleMatch({
    this.vrm,
    this.type,
    this.make,
    this.model,
    this.colour,
    this.compliance,
  });

  factory VehicleMatch.fromJson(
    Map<String, dynamic> json,
  ) {
    return VehicleMatch(
      vrm: json['vrm'] as String?,
      type: json['type'] as String?,
      make: json['make'] as String?,
      model: json['model'] as String?,
      colour: json['colour'] as String?,
      compliance: json['compliance'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'vrm': vrm,
      'type': type,
      'make': make,
      'model': model,
      'colour': colour,
      'compliance': compliance,
    };
  }
}
