import 'package:json_annotation/json_annotation.dart';

part 'search_match.g.dart';

@JsonSerializable()
class SearchMatch {
  String? id;
  String? url;
  String? name;
  double? lat;
  double? lon;

  SearchMatch({
    this.id,
    this.url,
    this.name,
    this.lat,
    this.lon,
  });

  factory SearchMatch.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SearchMatchFromJson(json);

  static List<SearchMatch> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => SearchMatch.fromJson(value),
          )
          .toList();

  static Map<String, SearchMatch> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          SearchMatch.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$SearchMatchToJson(this);
}
