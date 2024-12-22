import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

import 'place_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late TflApiClient api;
  late http.Client client;

  group(
    'PlaceService',
    () {
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
                    '/place/meta/categories',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.PlaceCategory, Tfl.Api.Presentation.Entities",
    "category": "string",
    "availableKeys": [
      "string"
    ]
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.place.metaCategories();

              // Assert
              expect(
                result[0].category,
                equals('string'),
              );

              expect(
                result[0].availableKeys?[0],
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'metaPlaceTypes',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              when(
                client.get(
                  Uri.https(
                    authority,
                    '/place/meta/placetypes',
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
              final result = await api.place.metaPlaceTypes();

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
        'getByType',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const types = ['type'];

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/place/type/${types.join(',')}',
                    {},
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
              final result = await api.place.getByType(types);

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
                    '/place/$id',
                    {},
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
              final result = await api.place.get(id);

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
        'getByGeoPoint',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const lat = 0.0;
              const lon = 0.0;

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/place',
                    {
                      'lat': lat.toString(),
                      'lon': lon.toString(),
                    },
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.PlacesResponse, Tfl.Api.Presentation.Entities",
  "centrePoint": [0.0, 0.0],
  "places": [
    {
      "$type": "Tfl.Api.Presentation.Entities.StopPoint, Tfl.Api.Presentation.Entities",
      "naptanId": "string",
      "modes": [
        "string"
      ],
      "icsCode": "string",
      "stopType": "string",
      "stationNaptan": "string",
      "hubNaptanCode": "string",
      "lines": [
        {
          "$type": "Tfl.Api.Presentation.Entities.Identifier, Tfl.Api.Presentation.Entities",
          "id": "string",
          "name": "string",
          "uri": "string",
          "type": "string",
          "crowding": {
            "$type": "Tfl.Api.Presentation.Entities.Crowding, Tfl.Api.Presentation.Entities"
          },
          "routeType": "string",
          "status": "string"
        }
      ],
      "lineGroup": [
        {
          "$type": "Tfl.Api.Presentation.Entities.LineGroup, Tfl.Api.Presentation.Entities",
          "stationAtcoCode": "string",
          "lineIdentifier": [
            "string"
          ]
        }
      ],
      "lineModeGroups": [
        {
          "$type": "Tfl.Api.Presentation.Entities.LineModeGroup, Tfl.Api.Presentation.Entities",
          "modeName": "string",
          "lineIdentifier": [
            "string"
          ]
        }
      ],
      "status": true,
      "id": "string",
      "commonName": "string",
      "distance": 0.0,
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
      "lat": 0.0,
      "lon": 0.0
    }
  ]
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.place.getByGeoPoint(lat, lon);

              // Assert
              expect(
                result.centrePoint,
                equals([0.0, 0.0]),
              );

              expect(
                result.places?[0],
                isA<StopPoint>(),
              );

              expect(
                (result.places?[0] as StopPoint).naptanId,
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint).modes?[0],
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint).icsCode,
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint).stopType,
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint).stationNaptan,
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint).lines?[0].id,
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint).lines?[0].name,
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint).lines?[0].uri,
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint).lines?[0].type,
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint).lines?[0].routeType,
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint).lines?[0].status,
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint).lineGroup?[0].stationAtcoCode,
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint)
                    .lineGroup?[0]
                    .lineIdentifier?[0],
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint).lineModeGroups?[0].modeName,
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint)
                    .lineModeGroups?[0]
                    .lineIdentifier?[0],
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint).status,
                isTrue,
              );

              expect(
                (result.places?[0] as StopPoint).id,
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint).commonName,
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint).distance,
                equals(0.0),
              );

              expect(
                (result.places?[0] as StopPoint).placeType,
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint)
                    .additionalProperties?[0]
                    .category,
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint).additionalProperties?[0].key,
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint)
                    .additionalProperties?[0]
                    .sourceSystemKey,
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint).additionalProperties?[0].value,
                equals('string'),
              );

              expect(
                (result.places?[0] as StopPoint)
                    .additionalProperties?[0]
                    .modified,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                (result.places?[0] as StopPoint).lat,
                equals(0.0),
              );

              expect(
                (result.places?[0] as StopPoint).lon,
                equals(0.0),
              );
            },
          );
        },
      );

      group(
        'getAt',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const type = 'type';
              const lat = 0.0;
              const lon = 0.0;

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/place/$type/at/$lat/$lon',
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
              final result = await api.place.getAt(type, lat, lon);

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

      group(
        'search',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const name = 'name';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/place/search',
                    {
                      'name': name,
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
              final result = await api.place.search(name);

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
