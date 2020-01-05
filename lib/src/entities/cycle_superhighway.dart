import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/db_geography.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'cycle_superhighway.g.dart';

@JsonSerializable()
class CycleSuperhighway implements Serializable {
  String id;

  /// The long label to show on maps when zoomed in.
  String label;

  /// The short label to show on maps.
  String labelShort;

  /// The line string that forms the route of the highway.
  DbGeography geography;

  /// True if the route is split into segments.
  bool segmented;

  /// The date when the data was last updated.
  DateTime modified;

  /// The cycle route status i.e Proposed, Existing etc.
  String status;
  // enum statusEnum {  Unknown,  All,  Open,  In Progress,  Planned,  Planned - Subject to feasibility and consultation.,  Not Open,  };

  /// The type of cycle route e.g CycleSuperhighways, Quietways, MiniHollands etc.
  String routeType;
  // enum routeTypeEnum {  Unknown,  All,  Cycle Superhighways,  Quietways,  Cycleways,  Mini-Hollands,  Central London Grid,  };

  CycleSuperhighway({
    this.id,
    this.label,
    this.labelShort,
    this.geography,
    this.segmented,
    this.modified,
    this.status,
    this.routeType,
  });

  factory CycleSuperhighway.fromJson(Map<String, dynamic> json) {
    return _$CycleSuperhighwayFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$CycleSuperhighwayToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
