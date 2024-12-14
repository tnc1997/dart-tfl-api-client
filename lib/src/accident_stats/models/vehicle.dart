class Vehicle {
  String? type;

  Vehicle({
    this.type,
  });

  factory Vehicle.fromJson(
    Map<String, dynamic> json,
  ) {
    return Vehicle(
      type: json['type'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
    };
  }
}
