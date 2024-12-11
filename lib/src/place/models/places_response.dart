import 'package:json_annotation/json_annotation.dart';

import '../../common/models/place.dart';

part 'places_response.g.dart';

@JsonSerializable()
class PlacesResponse {
  List<double>? centrePoint;
  List<Place>? places;

  PlacesResponse({
    this.centrePoint,
    this.places,
  });

  factory PlacesResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PlacesResponseFromJson(json);

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

  Map<String, dynamic> toJson() => _$PlacesResponseToJson(this);
}
