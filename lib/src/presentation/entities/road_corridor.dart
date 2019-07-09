class RoadCorridor {
  String id;

  /// The display name of the Corridor e.g. "North Circular (A406)".
  String displayName;

  /// The group name of the Corridor e.g. "Central London". Most corridors are not grouped, in which case this field can be null.
  String group;

  /// The standard multi-mode status severity code.
  String statusSeverity;

  /// The description of the status severity as applied to road corridors.
  String statusSeverityDescription;

  /// The bounds of the corridor, given by the south-east followed by the north-west co-ordinate pair in GeoJSON format e.g. "[[-1.241531,51.242151],[1.641223,53.765721]]".
  String bounds;

  /// The envelope of the corridor, given by the corner co-ordinates of a rectangular (four-point) polygon in GeoJSON format e.g. "[[-1.241531,51.242151],[-1.241531,53.765721],[1.641223,53.765721],[1.641223,51.242151]]".
  String envelope;

  /// The start of the period over which status has been aggregated, or null if this is the current corridor status.
  DateTime statusAggregationStartDate;

  /// The end of the period over which status has been aggregated, or null if this is the current corridor status.
  DateTime statusAggregationEndDate;

  /// The URL to retrieve this corridor.
  String url;

  RoadCorridor();

  @override
  String toString() {
    return 'RoadCorridor[id=$id, displayName=$displayName, group=$group, statusSeverity=$statusSeverity, statusSeverityDescription=$statusSeverityDescription, bounds=$bounds, envelope=$envelope, statusAggregationStartDate=$statusAggregationStartDate, statusAggregationEndDate=$statusAggregationEndDate, url=$url, ]';
  }

  RoadCorridor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    displayName = json['displayName'];
    group = json['group'];
    statusSeverity = json['statusSeverity'];
    statusSeverityDescription = json['statusSeverityDescription'];
    bounds = json['bounds'];
    envelope = json['envelope'];
    statusAggregationStartDate = json['statusAggregationStartDate'] == null
        ? null
        : DateTime.parse(json['statusAggregationStartDate']);
    statusAggregationEndDate = json['statusAggregationEndDate'] == null
        ? null
        : DateTime.parse(json['statusAggregationEndDate']);
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'displayName': displayName,
      'group': group,
      'statusSeverity': statusSeverity,
      'statusSeverityDescription': statusSeverityDescription,
      'bounds': bounds,
      'envelope': envelope,
      'statusAggregationStartDate': statusAggregationStartDate == null
          ? ''
          : statusAggregationStartDate.toUtc().toIso8601String(),
      'statusAggregationEndDate': statusAggregationEndDate == null
          ? ''
          : statusAggregationEndDate.toUtc().toIso8601String(),
      'url': url
    };
  }

  static List<RoadCorridor> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<RoadCorridor>()
        : json.map((value) => new RoadCorridor.fromJson(value)).toList();
  }

  static Map<String, RoadCorridor> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RoadCorridor>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new RoadCorridor.fromJson(value));
    }
    return map;
  }
}
