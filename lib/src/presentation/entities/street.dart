import './street_segment.dart';
import '../../internal/serializable.dart';

class Street implements Serializable {
  /// The street name.
  String name;

  /// The type of road closure. Open = road is open, not blocked, not closed, not restricted. It maybe that the disruption has been moved out of the carriageway. Partial Closure = road is partially blocked, closed or restricted. Full Closure = road is fully blocked or closed.
  String closure;

  /// The direction of the disruption on the street.
  String directions;

  /// The geographic description of the sections of this street that are affected.
  List<StreetSegment> segments;

  /// The id from the source system of the disruption that this street belongs to.
  int sourceSystemId;

  /// The key of the source system of the disruption that this street belongs to.
  String sourceSystemKey;

  Street({
    this.name,
    this.closure,
    this.directions,
    this.segments,
    this.sourceSystemId,
    this.sourceSystemKey,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'closure': closure,
      'directions': directions,
      'segments': segments,
      'sourceSystemId': sourceSystemId,
      'sourceSystemKey': sourceSystemKey,
    };
  }

  @override
  String toString() {
    return 'Street[name=$name, closure=$closure, directions=$directions, segments=$segments, sourceSystemId=$sourceSystemId, sourceSystemKey=$sourceSystemKey]';
  }

  Street.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    name = json['name'];
    closure = json['closure'];
    directions = json['directions'];
    segments = StreetSegment.listFromJson(json['segments']);
    sourceSystemId = json['sourceSystemId'];
    sourceSystemKey = json['sourceSystemKey'];
  }

  static List<Street> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Street>()
        : json.map((value) => Street.fromJson(value)).toList();
  }

  static Map<String, Street> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Street>()
        : json.map((key, value) => MapEntry(key, Street.fromJson(value)));
  }
}
