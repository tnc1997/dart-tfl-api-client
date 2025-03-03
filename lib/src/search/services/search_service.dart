import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/tfl_api_client_exception.dart';
import '../../common/models/search_response.dart';

class SearchService {
  final http.Client _client;

  const SearchService({
    required http.Client client,
  }) : _client = client;

  /// Search the site for occurrences of the query string. The maximum number of results returned is equal to the maximum page size of 100. To return subsequent pages, use the paginated overload.
  Future<SearchResponse> get(
    String query,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/search',
        {
          'query': query,
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return SearchResponse.fromJson(json.decode(response.body));
  }

  /// Searches the bus schedules folder on S3 for a given bus number.
  Future<SearchResponse> busSchedules(
    String query,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/search/busschedules',
        {
          'query': query,
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return SearchResponse.fromJson(json.decode(response.body));
  }

  /// Gets the available searchProvider names.
  Future<List<String>> metaSearchProviders() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/search/meta/searchproviders',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => e as String)
        .toList();
  }

  /// Gets the available search categories.
  Future<List<String>> metaCategories() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/search/meta/categories',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => e as String)
        .toList();
  }

  /// Gets the available sorting options.
  Future<List<String>> metaSorts() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/search/meta/sorts',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => e as String)
        .toList();
  }
}
