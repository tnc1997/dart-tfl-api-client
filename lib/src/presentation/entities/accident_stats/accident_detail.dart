import './casualty.dart';
import './vehicle.dart';
import '../../../internal/serializable.dart';

class AccidentDetail implements Serializable {
  int id;

  double lat;

  double lon;

  String location;

  DateTime date;

  String severity;

  String borough;

  List<Casualty> casualties;

  List<Vehicle> vehicles;

  AccidentDetail({
    this.id,
    this.lat,
    this.lon,
    this.location,
    this.date,
    this.severity,
    this.borough,
    this.casualties,
    this.vehicles,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'lat': lat,
      'lon': lon,
      'location': location,
      'date': date == null ? '' : date.toUtc().toIso8601String(),
      'severity': severity,
      'borough': borough,
      'casualties': casualties,
      'vehicles': vehicles
    };
  }

  @override
  String toString() {
    return 'AccidentDetail[id=$id, lat=$lat, lon=$lon, location=$location, date=$date, severity=$severity, borough=$borough, casualties=$casualties, vehicles=$vehicles, ]';
  }

  AccidentDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    id = json['id'];
    lat = json['lat'];
    lon = json['lon'];
    location = json['location'];
    date = json['date'] == null ? null : DateTime.parse(json['date']);
    severity = json['severity'];
    borough = json['borough'];
    casualties = Casualty.listFromJson(json['casualties']);
    vehicles = Vehicle.listFromJson(json['vehicles']);
  }

  static List<AccidentDetail> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<AccidentDetail>()
        : json.map((value) => AccidentDetail.fromJson(value)).toList();
  }

  static Map<String, AccidentDetail> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, AccidentDetail>()
        : json
            .map((key, value) => MapEntry(key, AccidentDetail.fromJson(value)));
  }
}
