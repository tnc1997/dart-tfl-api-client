class Ptai {
  int? ptalGridId;
  int? x;
  int? y;
  int? node;
  String? stopName;
  String? mode;
  String? routeCode;
  String? route;
  double? distm;
  double? vehiclesPerHour;
  double? weight;
  double? walkTime;
  double? swt;
  double? tat;
  double? edf;
  double? ai;
  String? ptalValue;

  Ptai({
    this.ptalGridId,
    this.x,
    this.y,
    this.node,
    this.stopName,
    this.mode,
    this.routeCode,
    this.route,
    this.distm,
    this.vehiclesPerHour,
    this.weight,
    this.walkTime,
    this.swt,
    this.tat,
    this.edf,
    this.ai,
    this.ptalValue,
  });

  factory Ptai.fromJson(
    Map<String, dynamic> json,
  ) {
    return Ptai(
      ptalGridId: (json['ptalGridId'] as num?)?.toInt(),
      x: (json['x'] as num?)?.toInt(),
      y: (json['y'] as num?)?.toInt(),
      node: (json['node'] as num?)?.toInt(),
      stopName: json['stopName'] as String?,
      mode: json['mode'] as String?,
      routeCode: json['routeCode'] as String?,
      route: json['route'] as String?,
      distm: (json['distm'] as num?)?.toDouble(),
      vehiclesPerHour: (json['vehiclesPerHour'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      walkTime: (json['walkTime'] as num?)?.toDouble(),
      swt: (json['swt'] as num?)?.toDouble(),
      tat: (json['tat'] as num?)?.toDouble(),
      edf: (json['edf'] as num?)?.toDouble(),
      ai: (json['aI'] as num?)?.toDouble(),
      ptalValue: json['ptalValue'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ptalGridId': ptalGridId,
      'x': x,
      'y': y,
      'node': node,
      'stopName': stopName,
      'mode': mode,
      'routeCode': routeCode,
      'route': route,
      'distm': distm,
      'vehiclesPerHour': vehiclesPerHour,
      'weight': weight,
      'walkTime': walkTime,
      'swt': swt,
      'tat': tat,
      'edf': edf,
      'aI': ai,
      'ptalValue': ptalValue,
    };
  }
}
