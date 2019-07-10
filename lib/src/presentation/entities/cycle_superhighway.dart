import '../../internal/serializable.dart';
import '../../system/data/spacial/db_geography.dart';

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

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'label': label,
      'labelShort': labelShort,
      'geography': geography,
      'segmented': segmented,
      'modified': modified == null ? '' : modified.toUtc().toIso8601String(),
      'status': status,
      'routeType': routeType,
    };
  }

  @override
  String toString() {
    return 'CycleSuperhighway[id=$id, label=$label, labelShort=$labelShort, geography=$geography, segmented=$segmented, modified=$modified, status=$status, routeType=$routeType]';
  }

  CycleSuperhighway.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    id = json['id'];
    label = json['label'];
    labelShort = json['labelShort'];
    geography = DbGeography.fromJson(json['geography']);
    segmented = json['segmented'];
    modified =
        json['modified'] == null ? null : DateTime.parse(json['modified']);
    status = json['status'];
    routeType = json['routeType'];
  }

  static List<CycleSuperhighway> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<CycleSuperhighway>()
        : json.map((value) => CycleSuperhighway.fromJson(value)).toList();
  }

  static Map<String, CycleSuperhighway> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, CycleSuperhighway>()
        : json.map(
            (key, value) => MapEntry(key, CycleSuperhighway.fromJson(value)));
  }
}
