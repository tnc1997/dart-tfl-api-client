import 'package:json_annotation/json_annotation.dart';

import 'search_match.dart';

part 'place_search_match.g.dart';

@JsonSerializable()
class PlaceSearchMatch extends SearchMatch {
  List<String>? types;
  String? address;
  String? icon;
  Object? boundingBox;

  PlaceSearchMatch({
    String? id,
    String? url,
    String? name,
    double? lat,
    double? lon,
    this.types,
    this.address,
    this.icon,
    this.boundingBox,
  }) : super(
          id: id,
          url: url,
          name: name,
          lat: lat,
          lon: lon,
        );

  factory PlaceSearchMatch.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PlaceSearchMatchFromJson(json);

  static List<PlaceSearchMatch> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PlaceSearchMatch.fromJson(value),
          )
          .toList();

  static Map<String, PlaceSearchMatch> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PlaceSearchMatch.fromJson(value),
        ),
      );

  @override
  Map<String, dynamic> toJson() => _$PlaceSearchMatchToJson(this);
}
