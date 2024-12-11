import 'package:json_annotation/json_annotation.dart';

import 'stop_point.dart';

part 'route_section_naptan_entry_sequence.g.dart';

@JsonSerializable()
class RouteSectionNaptanEntrySequence {
  int? ordinal;
  StopPoint? stopPoint;

  RouteSectionNaptanEntrySequence({
    this.ordinal,
    this.stopPoint,
  });

  factory RouteSectionNaptanEntrySequence.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RouteSectionNaptanEntrySequenceFromJson(json);

  static List<RouteSectionNaptanEntrySequence> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RouteSectionNaptanEntrySequence.fromJson(value),
          )
          .toList();

  static Map<String, RouteSectionNaptanEntrySequence> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RouteSectionNaptanEntrySequence.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() =>
      _$RouteSectionNaptanEntrySequenceToJson(this);
}
