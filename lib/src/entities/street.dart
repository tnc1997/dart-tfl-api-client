import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/street_segment.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'street.g.dart';

@JsonSerializable()
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

  factory Street.fromJson(Map<String, dynamic> json) {
    return _$StreetFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$StreetToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
