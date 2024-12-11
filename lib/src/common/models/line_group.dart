import 'package:json_annotation/json_annotation.dart';

part 'line_group.g.dart';

@JsonSerializable()
class LineGroup {
  String? naptanIdReference;
  String? stationAtcoCode;
  List<String>? lineIdentifier;

  LineGroup({
    this.naptanIdReference,
    this.stationAtcoCode,
    this.lineIdentifier,
  });

  factory LineGroup.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LineGroupFromJson(json);

  static List<LineGroup> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => LineGroup.fromJson(value),
          )
          .toList();

  static Map<String, LineGroup> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          LineGroup.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$LineGroupToJson(this);
}
