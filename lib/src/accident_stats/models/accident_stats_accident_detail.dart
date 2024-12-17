import 'accident_stats_casualty.dart';
import 'accident_stats_vehicle.dart';

class AccidentStatsAccidentDetail {
  int? id;
  double? lat;
  double? lon;
  String? location;
  DateTime? date;
  String? severity;
  String? borough;
  List<AccidentStatsCasualty>? casualties;
  List<AccidentStatsVehicle>? vehicles;

  AccidentStatsAccidentDetail({
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

  factory AccidentStatsAccidentDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    return AccidentStatsAccidentDetail(
      id: json['id'] as int?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      location: json['location'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      severity: json['severity'] as String?,
      borough: json['borough'] as String?,
      casualties: (json['casualties'] as List<dynamic>?)
          ?.map(
              (e) => AccidentStatsCasualty.fromJson(e as Map<String, dynamic>))
          .toList(),
      vehicles: (json['vehicles'] as List<dynamic>?)
          ?.map((e) => AccidentStatsVehicle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'lat': lat,
      'lon': lon,
      'location': location,
      'date': date?.toIso8601String(),
      'severity': severity,
      'borough': borough,
      'casualties': casualties,
      'vehicles': vehicles,
    };
  }
}
