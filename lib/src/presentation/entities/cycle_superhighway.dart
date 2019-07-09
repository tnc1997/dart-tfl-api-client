import '../../system/data/spacial/db_geography.dart';

class CycleSuperhighway {
  String id;

  /// The long label to show on maps when zoomed in.
  String label;

  /// The short label to show on maps.
  String labelShort;

  /// A LineString or MultiLineString that forms the route of the highway.
  DbGeography geography;

  /// True if the route is split into segments.
  bool segmented;

  /// When the data was last updated.
  DateTime modified;

  /// Cycle route status i.e Proposed, Existing etc.
  String status;
  // enum statusEnum {  Unknown,  All,  Open,  In Progress,  Planned,  Planned - Subject to feasibility and consultation.,  Not Open,  };

  /// Type of cycle route e.g CycleSuperhighways, Quietways, MiniHollands etc.
  String routeType;
  // enum routeTypeEnum {  Unknown,  All,  Cycle Superhighways,  Quietways,  Cycleways,  Mini-Hollands,  Central London Grid,  };

  CycleSuperhighway();

  @override
  String toString() {
    return 'CycleSuperhighway[id=$id, label=$label, labelShort=$labelShort, geography=$geography, segmented=$segmented, modified=$modified, status=$status, routeType=$routeType, ]';
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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'label': label,
      'labelShort': labelShort,
      'geography': geography,
      'segmented': segmented,
      'modified': modified == null ? '' : modified.toUtc().toIso8601String(),
      'status': status,
      'routeType': routeType
    };
  }

  static List<CycleSuperhighway> listFromJson(List<dynamic> json) {
    return json == null
        ? List<CycleSuperhighway>()
        : json.map((value) => CycleSuperhighway.fromJson(value)).toList();
  }

  static Map<String, CycleSuperhighway> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, CycleSuperhighway>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = CycleSuperhighway.fromJson(value));
    }
    return map;
  }
}
