class VehicleMatch {
  String vrm;

  String type;

  String make;

  String model;

  String colour;

  String compliance;
  // enum complianceEnum {  NotAvailable,  NotCompliant,  Compliant,  Exempt,  };

  VehicleMatch();

  @override
  String toString() {
    return 'VehicleMatch[vrm=$vrm, type=$type, make=$make, model=$model, colour=$colour, compliance=$compliance, ]';
  }

  VehicleMatch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vrm = json['vrm'];
    type = json['type'];
    make = json['make'];
    model = json['model'];
    colour = json['colour'];
    compliance = json['compliance'];
  }

  Map<String, dynamic> toJson() {
    return {
      'vrm': vrm,
      'type': type,
      'make': make,
      'model': model,
      'colour': colour,
      'compliance': compliance
    };
  }

  static List<VehicleMatch> listFromJson(List<dynamic> json) {
    return json == null
        ? List<VehicleMatch>()
        : json.map((value) => VehicleMatch.fromJson(value)).toList();
  }

  static Map<String, VehicleMatch> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, VehicleMatch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = VehicleMatch.fromJson(value));
    }
    return map;
  }
}
