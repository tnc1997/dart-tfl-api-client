import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'geo_code_search_match.g.dart';

@JsonSerializable()
class GeoCodeSearchMatch implements Serializable {
  List<String> types;

  String address;

  String id;

  String url;

  String name;

  double lat;

  double lon;

  GeoCodeSearchMatch({
    this.types,
    this.address,
    this.id,
    this.url,
    this.name,
    this.lat,
    this.lon,
  });

  factory GeoCodeSearchMatch.fromJson(Map<String, dynamic> json) {
    return _$GeoCodeSearchMatchFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$GeoCodeSearchMatchToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
