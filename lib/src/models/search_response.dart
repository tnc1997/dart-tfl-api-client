import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/search_match.dart';

part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  String? query;
  int? from;
  int? page;
  int? pageSize;
  String? provider;
  int? total;
  List<SearchMatch>? matches;
  double? maxScore;

  SearchResponse({
    this.query,
    this.from,
    this.page,
    this.pageSize,
    this.provider,
    this.total,
    this.matches,
    this.maxScore,
  });

  factory SearchResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SearchResponseFromJson(json);

  static List<SearchResponse> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => SearchResponse.fromJson(value),
          )
          .toList();

  static Map<String, SearchResponse> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          SearchResponse.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$SearchResponseToJson(this);
}
