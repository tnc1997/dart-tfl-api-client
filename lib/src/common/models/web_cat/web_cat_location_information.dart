import 'package:json_annotation/json_annotation.dart';

part 'web_cat_location_information.g.dart';

@JsonSerializable()
class WebCatLocationInformation {
  double? lat;
  double? lon;
  String? borough;
  bool? insideGla;
  double? easting;
  double? northing;
  String? address;
  String? name;
  String? placeId;

  WebCatLocationInformation({
    this.lat,
    this.lon,
    this.borough,
    this.insideGla,
    this.easting,
    this.northing,
    this.address,
    this.name,
    this.placeId,
  });

  factory WebCatLocationInformation.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WebCatLocationInformationFromJson(json);

  static List<WebCatLocationInformation> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => WebCatLocationInformation.fromJson(value),
          )
          .toList();

  static Map<String, WebCatLocationInformation> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          WebCatLocationInformation.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$WebCatLocationInformationToJson(this);
}
