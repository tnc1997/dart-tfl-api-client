import 'place.dart';
import 'stop_point.dart';

class Point {
  double? lat;
  double? lon;

  Point({
    this.lat,
    this.lon,
  });

  factory Point.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json['\$type']) {
      case 'Tfl.Api.Presentation.Entities.Place, Tfl.Api.Presentation.Entities':
        return Place.fromJson(json);
      case 'Tfl.Api.Presentation.Entities.StopPoint, Tfl.Api.Presentation.Entities':
        return StopPoint.fromJson(json);
      default:
        return Point(
          lat: (json['lat'] as num?)?.toDouble(),
          lon: (json['lon'] as num?)?.toDouble(),
        );
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'lon': lon,
    };
  }
}
