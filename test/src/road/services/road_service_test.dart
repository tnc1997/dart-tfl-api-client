import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

import 'road_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late TflApiClient api;
  late http.Client client;

  group(
    'RoadService',
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
                    '/road',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.RoadCorridor, Tfl.Api.Presentation.Entities",
    "id": "string",
    "displayName": "string",
    "statusSeverity": "string",
    "statusSeverityDescription": "string",
    "bounds": "string",
    "envelope": "string",
    "url": "string"
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.road.getAll();

              // Assert
              expect(
                result[0].id,
                equals('string'),
              );

              expect(
                result[0].displayName,
                equals('string'),
              );

              expect(
                result[0].statusSeverity,
                equals('string'),
              );

              expect(
                result[0].statusSeverityDescription,
                equals('string'),
              );

              expect(
                result[0].bounds,
                equals('string'),
              );

              expect(
                result[0].envelope,
                equals('string'),
              );

              expect(
                result[0].url,
                equals('string'),
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
              const ids = ['id'];

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/road/${ids.join(',')}',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.RoadCorridor, Tfl.Api.Presentation.Entities",
    "id": "string",
    "displayName": "string",
    "statusSeverity": "string",
    "statusSeverityDescription": "string",
    "bounds": "string",
    "envelope": "string",
    "url": "string"
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.road.get(ids);

              // Assert
              expect(
                result[0].id,
                equals('string'),
              );

              expect(
                result[0].displayName,
                equals('string'),
              );

              expect(
                result[0].statusSeverity,
                equals('string'),
              );

              expect(
                result[0].statusSeverityDescription,
                equals('string'),
              );

              expect(
                result[0].bounds,
                equals('string'),
              );

              expect(
                result[0].envelope,
                equals('string'),
              );

              expect(
                result[0].url,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'status',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const ids = ['id'];

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/road/${ids.join(',')}/status',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.RoadCorridor, Tfl.Api.Presentation.Entities",
    "id": "string",
    "displayName": "string",
    "statusSeverity": "string",
    "statusSeverityDescription": "string",
    "bounds": "string",
    "envelope": "string",
    "statusAggregationStartDate": "1970-01-01T00:00:00Z",
    "statusAggregationEndDate": "1970-01-01T00:00:00Z",
    "url": "string"
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.road.status(ids);

              // Assert
              expect(
                result[0].id,
                equals('string'),
              );

              expect(
                result[0].displayName,
                equals('string'),
              );

              expect(
                result[0].statusSeverity,
                equals('string'),
              );

              expect(
                result[0].statusSeverityDescription,
                equals('string'),
              );

              expect(
                result[0].bounds,
                equals('string'),
              );

              expect(
                result[0].envelope,
                equals('string'),
              );

              expect(
                result[0].statusAggregationStartDate,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].statusAggregationEndDate,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].url,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'disruption',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const ids = ['id'];

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/road/${ids.join(',')}/disruption',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.RoadDisruption, Tfl.Api.Presentation.Entities",
    "id": "string",
    "url": "string",
    "point": "string",
    "severity": "string",
    "ordinal": 0,
    "category": "string",
    "subCategory": "string",
    "comments": "string",
    "currentUpdate": "string",
    "currentUpdateDateTime": "1970-01-01T00:00:00Z",
    "corridorIds": [
      "string"
    ],
    "startDateTime": "1970-01-01T00:00:00Z",
    "endDateTime": "1970-01-01T00:00:00Z",
    "lastModifiedTime": "1970-01-01T00:00:00Z",
    "levelOfInterest": "string",
    "location": "string",
    "status": "string",
    "geography": {
      "type": "string",
      "coordinates": [0.0, 0.0],
      "crs": {
        "type": "string",
        "properties": {
          "name": "string"
        }
      }
    },
    "geometry": {
      "type": "string",
      "coordinates": [
        [
          [0.0, 0.0]
        ]
      ],
      "crs": {
        "type": "string",
        "properties": {
          "name": "string"
        }
      }
    },
    "streets": [
      {
        "$type": "Tfl.Api.Presentation.Entities.Street, Tfl.Api.Presentation.Entities",
        "name": "string",
        "closure": "string",
        "directions": "string",
        "segments": [
          {
            "$type": "Tfl.Api.Presentation.Entities.StreetSegment, Tfl.Api.Presentation.Entities",
            "toid": "string",
            "lineString": "string",
            "sourceSystemId": 0
          }
        ],
        "sourceSystemId": 0,
        "sourceSystemKey": "string"
      }
    ],
    "isProvisional": true,
    "hasClosures": true,
    "roadDisruptionLines": [],
    "roadDisruptionImpactAreas": [],
    "recurringSchedules": []
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.road.disruption(ids);

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
                result[0].point,
                equals('string'),
              );

              expect(
                result[0].severity,
                equals('string'),
              );

              expect(
                result[0].ordinal,
                equals(0),
              );

              expect(
                result[0].category,
                equals('string'),
              );

              expect(
                result[0].subCategory,
                equals('string'),
              );

              expect(
                result[0].comments,
                equals('string'),
              );

              expect(
                result[0].currentUpdate,
                equals('string'),
              );

              expect(
                result[0].currentUpdateDateTime,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].corridorIds?[0],
                equals('string'),
              );

              expect(
                result[0].startDateTime,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].endDateTime,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lastModifiedTime,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].levelOfInterest,
                equals('string'),
              );

              expect(
                result[0].location,
                equals('string'),
              );

              expect(
                result[0].status,
                equals('string'),
              );

              expect(
                result[0].geography?.type,
                equals('string'),
              );

              expect(
                result[0].geography?.coordinates,
                equals([0.0, 0.0]),
              );

              expect(
                result[0].geography?.crs?.type,
                equals('string'),
              );

              expect(
                result[0].geography?.crs?.properties?.name,
                equals('string'),
              );

              expect(
                result[0].geometry?.type,
                equals('string'),
              );

              expect(
                result[0].geometry?.coordinates,
                equals([
                  [
                    [0.0, 0.0]
                  ]
                ]),
              );

              expect(
                result[0].geometry?.crs?.type,
                equals('string'),
              );

              expect(
                result[0].geometry?.crs?.properties?.name,
                equals('string'),
              );

              expect(
                result[0].streets?[0].name,
                equals('string'),
              );

              expect(
                result[0].streets?[0].closure,
                equals('string'),
              );

              expect(
                result[0].streets?[0].directions,
                equals('string'),
              );

              expect(
                result[0].streets?[0].segments?[0].toid,
                equals('string'),
              );

              expect(
                result[0].streets?[0].segments?[0].lineString,
                equals('string'),
              );

              expect(
                result[0].streets?[0].segments?[0].sourceSystemId,
                equals(0),
              );

              expect(
                result[0].streets?[0].sourceSystemId,
                equals(0),
              );

              expect(
                result[0].streets?[0].sourceSystemKey,
                equals('string'),
              );

              expect(
                result[0].isProvisional,
                isTrue,
              );

              expect(
                result[0].hasClosures,
                isTrue,
              );

              expect(
                result[0].roadDisruptionLines,
                isEmpty,
              );

              expect(
                result[0].roadDisruptionImpactAreas,
                isEmpty,
              );

              expect(
                result[0].recurringSchedules,
                isEmpty,
              );
            },
          );
        },
      );

      group(
        'disruptedStreets',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              when(
                client.get(
                  Uri.https(
                    authority,
                    '/road/all/street/disruption',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.DisruptedStreetSegment, Tfl.Api.Presentation.Entities",
    "streetName": "string",
    "closure": "string",
    "directions": "string",
    "lineString": "string",
    "distruptedStreetId": "string",
    "disruptionId": "string",
    "startLat": 0.0,
    "startLon": 0.0,
    "endLat": 0.0,
    "endLon": 0.0,
    "severity": "string",
    "category": "string",
    "subCategory": "string",
    "comments": "string",
    "startDateTime": "1970-01-01T00:00:00Z",
    "endDateTime": "1970-01-01T00:00:00Z",
    "levelOfInterest": "string",
    "location": "string",
    "recurringSchedules": []
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.road.disruptedStreets();

              // Assert
              expect(
                result[0].streetName,
                equals('string'),
              );

              expect(
                result[0].closure,
                equals('string'),
              );

              expect(
                result[0].directions,
                equals('string'),
              );

              expect(
                result[0].lineString,
                equals('string'),
              );

              expect(
                result[0].distruptedStreetId,
                equals('string'),
              );

              expect(
                result[0].disruptionId,
                equals('string'),
              );

              expect(
                result[0].startLat,
                equals(0.0),
              );

              expect(
                result[0].startLon,
                equals(0.0),
              );

              expect(
                result[0].endLat,
                equals(0.0),
              );

              expect(
                result[0].endLon,
                equals(0.0),
              );

              expect(
                result[0].severity,
                equals('string'),
              );

              expect(
                result[0].category,
                equals('string'),
              );

              expect(
                result[0].subCategory,
                equals('string'),
              );

              expect(
                result[0].comments,
                equals('string'),
              );

              expect(
                result[0].startDateTime,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].endDateTime,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].levelOfInterest,
                equals('string'),
              );

              expect(
                result[0].location,
                equals('string'),
              );

              expect(
                result[0].recurringSchedules,
                isEmpty,
              );
            },
          );
        },
      );

      group(
        'disruptionById',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const disruptionIds = ['disruptionId'];

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/road/all/disruption/${disruptionIds.join(',')}',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.RoadDisruption, Tfl.Api.Presentation.Entities",
    "id": "string",
    "url": "string",
    "point": "string",
    "severity": "string",
    "ordinal": 0,
    "category": "string",
    "subCategory": "string",
    "comments": "string",
    "currentUpdate": "string",
    "currentUpdateDateTime": "1970-01-01T00:00:00Z",
    "corridorIds": [
      "string"
    ],
    "startDateTime": "1970-01-01T00:00:00Z",
    "endDateTime": "1970-01-01T00:00:00Z",
    "lastModifiedTime": "1970-01-01T00:00:00Z",
    "levelOfInterest": "string",
    "location": "string",
    "status": "string",
    "geography": {
      "type": "string",
      "coordinates": [0.0, 0.0],
      "crs": {
        "type": "string",
        "properties": {
          "name": "string"
        }
      }
    },
    "geometry": {
      "type": "string",
      "coordinates": [
        [
          [0.0, 0.0]
        ]
      ],
      "crs": {
        "type": "string",
        "properties": {
          "name": "string"
        }
      }
    },
    "streets": [
      {
        "$type": "Tfl.Api.Presentation.Entities.Street, Tfl.Api.Presentation.Entities",
        "name": "string",
        "closure": "string",
        "directions": "string",
        "segments": [
          {
            "$type": "Tfl.Api.Presentation.Entities.StreetSegment, Tfl.Api.Presentation.Entities",
            "toid": "string",
            "lineString": "string",
            "sourceSystemId": 0
          }
        ],
        "sourceSystemId": 0,
        "sourceSystemKey": "string"
      }
    ],
    "isProvisional": true,
    "hasClosures": true,
    "roadDisruptionLines": [],
    "roadDisruptionImpactAreas": [],
    "recurringSchedules": []
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.road.disruptionById(disruptionIds);

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
                result[0].point,
                equals('string'),
              );

              expect(
                result[0].severity,
                equals('string'),
              );

              expect(
                result[0].ordinal,
                equals(0),
              );

              expect(
                result[0].category,
                equals('string'),
              );

              expect(
                result[0].subCategory,
                equals('string'),
              );

              expect(
                result[0].comments,
                equals('string'),
              );

              expect(
                result[0].currentUpdate,
                equals('string'),
              );

              expect(
                result[0].currentUpdateDateTime,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].corridorIds?[0],
                equals('string'),
              );

              expect(
                result[0].startDateTime,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].endDateTime,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lastModifiedTime,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].levelOfInterest,
                equals('string'),
              );

              expect(
                result[0].location,
                equals('string'),
              );

              expect(
                result[0].status,
                equals('string'),
              );

              expect(
                result[0].geography?.type,
                equals('string'),
              );

              expect(
                result[0].geography?.coordinates,
                equals([0.0, 0.0]),
              );

              expect(
                result[0].geography?.crs?.type,
                equals('string'),
              );

              expect(
                result[0].geography?.crs?.properties?.name,
                equals('string'),
              );

              expect(
                result[0].geometry?.type,
                equals('string'),
              );

              expect(
                result[0].geometry?.coordinates,
                equals([
                  [
                    [0.0, 0.0]
                  ]
                ]),
              );

              expect(
                result[0].geometry?.crs?.type,
                equals('string'),
              );

              expect(
                result[0].geometry?.crs?.properties?.name,
                equals('string'),
              );

              expect(
                result[0].streets?[0].name,
                equals('string'),
              );

              expect(
                result[0].streets?[0].closure,
                equals('string'),
              );

              expect(
                result[0].streets?[0].directions,
                equals('string'),
              );

              expect(
                result[0].streets?[0].segments?[0].toid,
                equals('string'),
              );

              expect(
                result[0].streets?[0].segments?[0].lineString,
                equals('string'),
              );

              expect(
                result[0].streets?[0].segments?[0].sourceSystemId,
                equals(0),
              );

              expect(
                result[0].streets?[0].sourceSystemId,
                equals(0),
              );

              expect(
                result[0].streets?[0].sourceSystemKey,
                equals('string'),
              );

              expect(
                result[0].isProvisional,
                isTrue,
              );

              expect(
                result[0].hasClosures,
                isTrue,
              );

              expect(
                result[0].roadDisruptionLines,
                isEmpty,
              );

              expect(
                result[0].roadDisruptionImpactAreas,
                isEmpty,
              );

              expect(
                result[0].recurringSchedules,
                isEmpty,
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
                    '/road/meta/categories',
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
              final result = await api.road.metaCategories();

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
        'metaSeverities',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              when(
                client.get(
                  Uri.https(
                    authority,
                    '/road/meta/severities',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.StatusSeverity, Tfl.Api.Presentation.Entities",
    "modeName": "string",
    "severityLevel": 0,
    "description": "string"
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.road.metaSeverities();

              // Assert
              expect(
                result[0].modeName,
                equals('string'),
              );

              expect(
                result[0].severityLevel,
                equals(0),
              );
              expect(
                result[0].description,
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
