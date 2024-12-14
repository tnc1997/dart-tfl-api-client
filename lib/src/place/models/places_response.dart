import '../../common/models/place.dart';

class PlacesResponse {
  List<double>? centrePoint;
  List<Place>? places;

  PlacesResponse({
    this.centrePoint,
    this.places,
  });

  factory PlacesResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return PlacesResponse(
      centrePoint: (json['centrePoint'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      places: (json['places'] as List<dynamic>?)
          ?.map((e) => Place.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'centrePoint': centrePoint,
      'places': places,
    };
  }
}
