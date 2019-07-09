import './casualty.dart';
import './vehicle.dart';

class AccidentDetail {
  int id;

  double lat;

  double lon;

  String location;

  DateTime date;

  String severity;

  String borough;

  List<Casualty> casualties;

  List<Vehicle> vehicles;

  AccidentDetail();

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

  static List<AccidentDetail> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<AccidentDetail>()
        : json.map((value) => new AccidentDetail.fromJson(value)).toList();
  }

  static Map<String, AccidentDetail> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccidentDetail>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new AccidentDetail.fromJson(value));
    }
    return map;
  }
}
