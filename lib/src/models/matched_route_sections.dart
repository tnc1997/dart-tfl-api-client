import 'package:json_annotation/json_annotation.dart';

part 'matched_route_sections.g.dart';

@JsonSerializable()
class MatchedRouteSections {
  int? id;

  MatchedRouteSections({
    this.id,
  });

  factory MatchedRouteSections.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MatchedRouteSectionsFromJson(json);

  static List<MatchedRouteSections> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => MatchedRouteSections.fromJson(value),
          )
          .toList();

  static Map<String, MatchedRouteSections> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          MatchedRouteSections.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$MatchedRouteSectionsToJson(this);
}
