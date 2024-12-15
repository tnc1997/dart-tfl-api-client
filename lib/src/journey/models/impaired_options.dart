class ImpairedOptions {
  bool? lowPlatformVehicle;
  bool? noEscalators;
  bool? noElevators;
  bool? noSolidStairs;
  bool? needElevatedPlatform;

  ImpairedOptions({
    this.lowPlatformVehicle,
    this.noEscalators,
    this.noElevators,
    this.noSolidStairs,
    this.needElevatedPlatform,
  });

  factory ImpairedOptions.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImpairedOptions(
      lowPlatformVehicle: json['lowPlatformVehicle'] as bool?,
      noEscalators: json['noEscalators'] as bool?,
      noElevators: json['noElevators'] as bool?,
      noSolidStairs: json['noSolidStairs'] as bool?,
      needElevatedPlatform: json['needElevatedPlatform'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lowPlatformVehicle': lowPlatformVehicle,
      'noEscalators': noEscalators,
      'noElevators': noElevators,
      'noSolidStairs': noSolidStairs,
      'needElevatedPlatform': needElevatedPlatform,
    };
  }
}
