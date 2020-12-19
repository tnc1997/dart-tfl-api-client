import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/street_match.dart';

part 'street_response.g.dart';

@JsonSerializable()
class StreetResponse {
  String? postCode;
  List<StreetMatch>? matches;

  StreetResponse({
    this.postCode,
    this.matches,
  });

  factory StreetResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StreetResponseFromJson(json);

  static List<StreetResponse> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => StreetResponse.fromJson(value),
          )
          .toList();

  static Map<String, StreetResponse> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          StreetResponse.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$StreetResponseToJson(this);
}
