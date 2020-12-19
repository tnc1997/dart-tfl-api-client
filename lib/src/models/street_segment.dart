import 'package:json_annotation/json_annotation.dart';

part 'street_segment.g.dart';

@JsonSerializable()
class StreetSegment {
  String? toid;
  String? lineString;
  int? sourceSystemId;
  String? sourceSystemKey;

  StreetSegment({
    this.toid,
    this.lineString,
    this.sourceSystemId,
    this.sourceSystemKey,
  });

  factory StreetSegment.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StreetSegmentFromJson(json);

  static List<StreetSegment> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => StreetSegment.fromJson(value),
          )
          .toList();

  static Map<String, StreetSegment> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          StreetSegment.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$StreetSegmentToJson(this);
}
