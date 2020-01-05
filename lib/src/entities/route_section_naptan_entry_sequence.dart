import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/stop_point.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'route_section_naptan_entry_sequence.g.dart';

@JsonSerializable()
class RouteSectionNaptanEntrySequence implements Serializable {
  int ordinal;

  StopPoint stopPoint;

  RouteSectionNaptanEntrySequence({
    this.ordinal,
    this.stopPoint,
  });

  factory RouteSectionNaptanEntrySequence.fromJson(Map<String, dynamic> json) {
    return _$RouteSectionNaptanEntrySequenceFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$RouteSectionNaptanEntrySequenceToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
