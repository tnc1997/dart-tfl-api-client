import '../../internal/serializable.dart';

class VehicleMatch implements Serializable {
  String vrm;

  String type;

  String make;

  String model;

  String colour;

  String compliance;
  // enum complianceEnum {  NotAvailable,  NotCompliant,  Compliant,  Exempt,  };

  VehicleMatch({
    this.vrm,
    this.type,
    this.make,
    this.model,
    this.colour,
    this.compliance,
  });

  @override
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

  static List<VehicleMatch> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<VehicleMatch>()
        : json.map((value) => VehicleMatch.fromJson(value)).toList();
  }

  static Map<String, VehicleMatch> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, VehicleMatch>()
        : json.map((key, value) => MapEntry(key, VehicleMatch.fromJson(value)));
  }
}
