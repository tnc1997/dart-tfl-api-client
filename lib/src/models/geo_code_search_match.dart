import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/search_match.dart';

part 'geo_code_search_match.g.dart';

@JsonSerializable()
class GeoCodeSearchMatch extends SearchMatch {
  List<String>? types;
  String? address;

  GeoCodeSearchMatch({
    String? id,
    String? url,
    String? name,
    double? lat,
    double? lon,
    this.types,
    this.address,
  }) : super(
          id: id,
          url: url,
          name: name,
          lat: lat,
          lon: lon,
        );

  factory GeoCodeSearchMatch.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GeoCodeSearchMatchFromJson(json);

  static List<GeoCodeSearchMatch> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => GeoCodeSearchMatch.fromJson(value),
          )
          .toList();

  static Map<String, GeoCodeSearchMatch> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          GeoCodeSearchMatch.fromJson(value),
        ),
      );

  @override
  Map<String, dynamic> toJson() => _$GeoCodeSearchMatchToJson(this);
}
