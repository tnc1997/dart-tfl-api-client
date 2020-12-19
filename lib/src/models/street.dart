import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/street_segment.dart';

part 'street.g.dart';

@JsonSerializable()
class Street {
  String? name;
  String? closure;
  String? directions;
  List<StreetSegment>? segments;
  int? sourceSystemId;
  String? sourceSystemKey;

  Street({
    this.name,
    this.closure,
    this.directions,
    this.segments,
    this.sourceSystemId,
    this.sourceSystemKey,
  });

  factory Street.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StreetFromJson(json);

  static List<Street> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Street.fromJson(value),
          )
          .toList();

  static Map<String, Street> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Street.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$StreetToJson(this);
}
