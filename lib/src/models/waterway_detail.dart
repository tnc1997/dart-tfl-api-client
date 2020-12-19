import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/place.dart';
import 'package:tfl_api_client/src/models/waterway_line_string.dart';

part 'waterway_detail.g.dart';

@JsonSerializable()
class WaterwayDetail {
  List<Place>? places;
  int? id;
  String? waterwayName;
  List<String>? types;
  List<WaterwayLineString>? lineStrings;

  WaterwayDetail({
    this.places,
    this.id,
    this.waterwayName,
    this.types,
    this.lineStrings,
  });

  factory WaterwayDetail.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WaterwayDetailFromJson(json);

  static List<WaterwayDetail> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => WaterwayDetail.fromJson(value),
          )
          .toList();

  static Map<String, WaterwayDetail> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          WaterwayDetail.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$WaterwayDetailToJson(this);
}
