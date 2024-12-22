import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

import 'search_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late TflApiClient api;
  late http.Client client;

  group(
    'SearchService',
    () {
      group(
        'get',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const query = 'query';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/search',
                    {
                      'query': query,
                    },
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.SearchResponse, Tfl.Api.Presentation.Entities",
  "query": "string",
  "pageSize": 0,
  "total": 0,
  "matches": [
    {
      "$type": "Tfl.Api.Presentation.Entities.ContentSearchMatch, Tfl.Api.Presentation.Entities",
      "score": 0.0,
      "highlights": [
        "string"
      ],
      "id": "string",
      "url": "string",
      "name": "string"
    }
  ],
  "maxScore": 0.0
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.search.get(query);

              // Assert
              expect(
                result.query,
                equals('string'),
              );

              expect(
                result.pageSize,
                equals(0),
              );

              expect(
                result.total,
                equals(0),
              );

              expect(
                result.matches?[0],
                isA<ContentSearchMatch>(),
              );

              expect(
                (result.matches?[0] as ContentSearchMatch).score,
                equals(0.0),
              );

              expect(
                (result.matches?[0] as ContentSearchMatch).highlights?[0],
                equals('string'),
              );

              expect(
                (result.matches?[0] as ContentSearchMatch).id,
                equals('string'),
              );

              expect(
                (result.matches?[0] as ContentSearchMatch).url,
                equals('string'),
              );

              expect(
                (result.matches?[0] as ContentSearchMatch).name,
                equals('string'),
              );

              expect(
                result.maxScore,
                equals(0.0),
              );
            },
          );
        },
      );

      group(
        'busSchedules',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const query = 'query';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/search/busschedules',
                    {
                      'query': query,
                    },
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.SearchResponse, Tfl.Api.Presentation.Entities",
  "total": 0,
  "matches": [
    {
      "$type": "Tfl.Api.Presentation.Entities.SearchMatch, Tfl.Api.Presentation.Entities",
      "url": "string",
      "name": "string"
    }
  ]
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.search.busSchedules(query);

              // Assert
              expect(
                result.total,
                equals(0),
              );

              expect(
                result.matches?[0].url,
                equals('string'),
              );

              expect(
                result.matches?[0].name,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'metaSearchProviders',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              when(
                client.get(
                  Uri.https(
                    authority,
                    '/search/meta/searchproviders',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
    "string"
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.search.metaSearchProviders();

              // Assert
              expect(
                result[0],
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'metaCategories',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              when(
                client.get(
                  Uri.https(
                    authority,
                    '/search/meta/categories',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
    "string"
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.search.metaCategories();

              // Assert
              expect(
                result[0],
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'metaSorts',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              when(
                client.get(
                  Uri.https(
                    authority,
                    '/search/meta/sorts',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
    "string"
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.search.metaSorts();

              // Assert
              expect(
                result[0],
                equals('string'),
              );
            },
          );
        },
      );
    },
  );

  setUp(
    () {
      api = TflApiClient(
        client: client = MockClient(),
      );
    },
  );

  tearDown(
    () {
      client.close();
    },
  );
}
