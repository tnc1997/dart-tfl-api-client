import './search_match.dart';

class SearchResponse {
  String query;

  int from;

  int page;

  int pageSize;

  String provider;

  int total;

  List<SearchMatch> matches;

  double maxScore;

  SearchResponse();

  @override
  String toString() {
    return 'SearchResponse[query=$query, from=$from, page=$page, pageSize=$pageSize, provider=$provider, total=$total, matches=$matches, maxScore=$maxScore, ]';
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

  Map<String, dynamic> toJson() {
    return {
      'query': query,
      'from': from,
      'page': page,
      'pageSize': pageSize,
      'provider': provider,
      'total': total,
      'matches': matches,
      'maxScore': maxScore
    };
  }

  static List<SearchResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<SearchResponse>()
        : json.map((value) => new SearchResponse.fromJson(value)).toList();
  }

  static Map<String, SearchResponse> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SearchResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new SearchResponse.fromJson(value));
    }
    return map;
  }
}
