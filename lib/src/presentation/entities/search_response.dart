import './search_match.dart';
import '../../internal/serializable.dart';

class SearchResponse implements Serializable {
  String query;

  int from;

  int page;

  int pageSize;

  String provider;

  int total;

  List<SearchMatch> matches;

  double maxScore;

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

  @override
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

  @override
  String toString() {
    return 'SearchResponse[query=$query, from=$from, page=$page, pageSize=$pageSize, provider=$provider, total=$total, matches=$matches, maxScore=$maxScore]';
  }

  SearchResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    query = json['query'];
    from = json['from'];
    page = json['page'];
    pageSize = json['pageSize'];
    provider = json['provider'];
    total = json['total'];
    matches = SearchMatch.listFromJson(json['matches']);
    maxScore = json['maxScore'];
  }

  static List<SearchResponse> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<SearchResponse>()
        : json.map((value) => SearchResponse.fromJson(value)).toList();
  }

  static Map<String, SearchResponse> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, SearchResponse>()
        : json
            .map((key, value) => MapEntry(key, SearchResponse.fromJson(value)));
  }
}
