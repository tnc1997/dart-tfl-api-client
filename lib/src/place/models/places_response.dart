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

  static List<PlacesResponse> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PlacesResponse.fromJson(value),
          )
          .toList();

  static Map<String, PlacesResponse> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PlacesResponse.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'centrePoint': centrePoint,
      'places': places,
    };
  }
}
