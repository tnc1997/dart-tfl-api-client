import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'matched_route_sections.g.dart';

@JsonSerializable()
class MatchedRouteSections implements Serializable {
  int id;

  MatchedRouteSections({
    this.id,
  });

  factory MatchedRouteSections.fromJson(Map<String, dynamic> json) {
    return _$MatchedRouteSectionsFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$MatchedRouteSectionsToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
