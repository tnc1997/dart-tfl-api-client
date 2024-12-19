import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

import 'bike_point_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late TflApiClient api;
  late http.Client client;

  group(
    'BikePointService',
    () {
      group(
        'getAll',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              when(
                client.get(
                  Uri.https(
                    authority,
                    '/bikepoint',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.Place, Tfl.Api.Presentation.Entities",
    "id": "string",
    "url": "string",
    "commonName": "string",
    "placeType": "string",
    "additionalProperties": [
      {
        "$type": "Tfl.Api.Presentation.Entities.AdditionalProperties, Tfl.Api.Presentation.Entities",
        "category": "string",
        "key": "string",
        "sourceSystemKey": "string",
        "value": "string",
        "modified": "1970-01-01T00:00:00Z"
      }
    ],
    "children": [],
    "childrenUrls": [],
    "lat": 0.0,
    "lon": 0.0
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.bikePoint.getAll();

              // Assert
              expect(
                result[0].id,
                equals('string'),
              );

              expect(
                result[0].url,
                equals('string'),
              );

              expect(
                result[0].commonName,
                equals('string'),
              );

              expect(
                result[0].placeType,
                equals('string'),
              );

              expect(
                result[0].additionalProperties?[0].category,
                equals('string'),
              );

              expect(
                result[0].additionalProperties?[0].key,
                equals('string'),
              );

              expect(
                result[0].additionalProperties?[0].sourceSystemKey,
                equals('string'),
              );

              expect(
                result[0].additionalProperties?[0].value,
                equals('string'),
              );

              expect(
                result[0].additionalProperties?[0].modified,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].children,
                isEmpty,
              );

              expect(
                result[0].childrenUrls,
                isEmpty,
              );

              expect(
                result[0].lat,
                equals(0.0),
              );

              expect(
                result[0].lon,
                equals(0.0),
              );
            },
          );
        },
      );

      group(
        'get',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const id = 'id';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/bikepoint/$id',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.Place, Tfl.Api.Presentation.Entities",
  "id": "string",
  "url": "string",
  "commonName": "string",
  "placeType": "string",
  "additionalProperties": [
    {
      "$type": "Tfl.Api.Presentation.Entities.AdditionalProperties, Tfl.Api.Presentation.Entities",
      "category": "string",
      "key": "string",
      "sourceSystemKey": "string",
      "value": "string",
      "modified": "1970-01-01T00:00:00Z"
    }
  ],
  "children": [],
  "childrenUrls": [],
  "lat": 0.0,
  "lon": 0.0
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.bikePoint.get(id);

              // Assert
              expect(
                result.id,
                equals('string'),
              );

              expect(
                result.url,
                equals('string'),
              );

              expect(
                result.commonName,
                equals('string'),
              );

              expect(
                result.placeType,
                equals('string'),
              );

              expect(
                result.additionalProperties?[0].category,
                equals('string'),
              );

              expect(
                result.additionalProperties?[0].key,
                equals('string'),
              );

              expect(
                result.additionalProperties?[0].sourceSystemKey,
                equals('string'),
              );

              expect(
                result.additionalProperties?[0].value,
                equals('string'),
              );

              expect(
                result.additionalProperties?[0].modified,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result.children,
                isEmpty,
              );

              expect(
                result.childrenUrls,
                isEmpty,
              );

              expect(
                result.lat,
                equals(0.0),
              );

              expect(
                result.lon,
                equals(0.0),
              );
            },
          );
        },
      );

      group(
        'search',
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
                    '/bikepoint/search',
                    {
                      'query': query,
                    },
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.Place, Tfl.Api.Presentation.Entities",
    "id": "string",
    "url": "string",
    "commonName": "string",
    "placeType": "string",
    "additionalProperties": [],
    "children": [],
    "childrenUrls": [],
    "lat": 0.0,
    "lon": 0.0
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.bikePoint.search(query);

              // Assert
              expect(
                result[0].id,
                equals('string'),
              );

              expect(
                result[0].url,
                equals('string'),
              );

              expect(
                result[0].commonName,
                equals('string'),
              );

              expect(
                result[0].placeType,
                equals('string'),
              );

              expect(
                result[0].additionalProperties,
                isEmpty,
              );

              expect(
                result[0].children,
                isEmpty,
              );

              expect(
                result[0].childrenUrls,
                isEmpty,
              );

              expect(
                result[0].lat,
                equals(0.0),
              );

              expect(
                result[0].lon,
                equals(0.0),
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
