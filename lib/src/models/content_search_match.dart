import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/search_match.dart';

part 'content_search_match.g.dart';

@JsonSerializable()
class ContentSearchMatch extends SearchMatch {
  double? score;
  String? ext;
  DateTime? lastModified;
  DateTime? date;
  List<String>? highlights;

  ContentSearchMatch({
    String? id,
    String? url,
    String? name,
    double? lat,
    double? lon,
    this.score,
    this.ext,
    this.lastModified,
    this.date,
    this.highlights,
  }) : super(
          id: id,
          url: url,
          name: name,
          lat: lat,
          lon: lon,
        );

  factory ContentSearchMatch.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ContentSearchMatchFromJson(json);

  static List<ContentSearchMatch> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ContentSearchMatch.fromJson(value),
          )
          .toList();

  static Map<String, ContentSearchMatch> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ContentSearchMatch.fromJson(value),
        ),
      );

  @override
  Map<String, dynamic> toJson() => _$ContentSearchMatchToJson(this);
}
