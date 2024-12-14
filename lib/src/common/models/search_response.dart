import 'search_match.dart';

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
  ) {
    return SearchResponse(
      query: json['query'] as String?,
      from: (json['from'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      provider: json['provider'] as String?,
      total: (json['total'] as num?)?.toInt(),
      matches: (json['matches'] as List<dynamic>?)
          ?.map((e) => SearchMatch.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxScore: (json['maxScore'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'query': query,
      'from': from,
      'page': page,
      'pageSize': pageSize,
      'provider': provider,
      'total': total,
      'matches': matches,
      'maxScore': maxScore,
    };
  }
}
