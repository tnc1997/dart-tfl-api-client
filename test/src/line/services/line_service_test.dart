import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

import 'line_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late TflApiClient api;
  late http.Client client;

  group(
    'LineService',
    () {
      group(
        'metaModes',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              when(
                client.get(
                  Uri.https(
                    authority,
                    '/line/meta/modes',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.Mode, Tfl.Api.Presentation.Entities",
    "isTflService": true,
    "isFarePaying": true,
    "isScheduledService": true,
    "modeName": "string"
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.line.metaModes();

              // Assert
              expect(
                result[0].isTflService,
                isTrue,
              );

              expect(
                result[0].isFarePaying,
                isTrue,
              );

              expect(
                result[0].isScheduledService,
                isTrue,
              );

              expect(
                result[0].modeName,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'metaSeverity',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              when(
                client.get(
                  Uri.https(
                    authority,
                    '/line/meta/severity',
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
              final result = await api.line.metaSeverity();

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

      group(
        'metaDisruptionCategories',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              when(
                client.get(
                  Uri.https(
                    authority,
                    '/line/meta/disruptioncategories',
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
              final result = await api.line.metaDisruptionCategories();

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
        'metaServiceTypes',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              when(
                client.get(
                  Uri.https(
                    authority,
                    '/line/meta/servicetypes',
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
              final result = await api.line.metaServiceTypes();

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
                    '/line/${ids.join(',')}',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.Line, Tfl.Api.Presentation.Entities",
    "id": "string",
    "name": "string",
    "modeName": "string",
    "disruptions": [],
    "created": "1970-01-01T00:00:00Z",
    "modified": "1970-01-01T00:00:00Z",
    "lineStatuses": [],
    "routeSections": [],
    "serviceTypes": [
      {
        "$type": "Tfl.Api.Presentation.Entities.LineServiceTypeInfo, Tfl.Api.Presentation.Entities",
        "name": "string",
        "uri": "string"
      }
    ],
    "crowding": {
      "$type": "Tfl.Api.Presentation.Entities.Crowding, Tfl.Api.Presentation.Entities"
    }
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.line.get(ids);

              // Assert
              expect(
                result[0].id,
                equals('string'),
              );

              expect(
                result[0].name,
                equals('string'),
              );

              expect(
                result[0].modeName,
                equals('string'),
              );

              expect(
                result[0].disruptions,
                isEmpty,
              );

              expect(
                result[0].created,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].modified,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses,
                isEmpty,
              );

              expect(
                result[0].routeSections,
                isEmpty,
              );

              expect(
                result[0].serviceTypes?[0].name,
                equals('string'),
              );

              expect(
                result[0].serviceTypes?[0].uri,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'getByMode',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const modes = ['mode'];

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/line/mode/${modes.join(',')}',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.Line, Tfl.Api.Presentation.Entities",
    "id": "string",
    "name": "string",
    "modeName": "string",
    "disruptions": [],
    "created": "1970-01-01T00:00:00Z",
    "modified": "1970-01-01T00:00:00Z",
    "lineStatuses": [],
    "routeSections": [],
    "serviceTypes": [
      {
        "$type": "Tfl.Api.Presentation.Entities.LineServiceTypeInfo, Tfl.Api.Presentation.Entities",
        "name": "string",
        "uri": "string"
      }
    ],
    "crowding": {
      "$type": "Tfl.Api.Presentation.Entities.Crowding, Tfl.Api.Presentation.Entities"
    }
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.line.getByMode(modes);

              // Assert
              expect(
                result[0].id,
                equals('string'),
              );

              expect(
                result[0].name,
                equals('string'),
              );

              expect(
                result[0].modeName,
                equals('string'),
              );

              expect(
                result[0].disruptions,
                isEmpty,
              );

              expect(
                result[0].created,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].modified,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses,
                isEmpty,
              );

              expect(
                result[0].routeSections,
                isEmpty,
              );

              expect(
                result[0].serviceTypes?[0].name,
                equals('string'),
              );

              expect(
                result[0].serviceTypes?[0].uri,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'route',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              when(
                client.get(
                  Uri.https(
                    authority,
                    '/line/route',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.Line, Tfl.Api.Presentation.Entities",
    "id": "string",
    "name": "string",
    "modeName": "string",
    "disruptions": [],
    "created": "1970-01-01T00:00:00Z",
    "modified": "1970-01-01T00:00:00Z",
    "lineStatuses": [],
    "routeSections": [
      {
        "$type": "Tfl.Api.Presentation.Entities.MatchedRoute, Tfl.Api.Presentation.Entities",
        "name": "string",
        "direction": "string",
        "originationName": "string",
        "destinationName": "string",
        "originator": "string",
        "destination": "string",
        "serviceType": "string",
        "validTo": "1970-01-01T00:00:00Z",
        "validFrom": "1970-01-01T00:00:00Z"
      }
    ],
    "serviceTypes": [
      {
        "$type": "Tfl.Api.Presentation.Entities.LineServiceTypeInfo, Tfl.Api.Presentation.Entities",
        "name": "string",
        "uri": "string"
      }
    ],
    "crowding": {
      "$type": "Tfl.Api.Presentation.Entities.Crowding, Tfl.Api.Presentation.Entities"
    }
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.line.route();

              // Assert
              expect(
                result[0].id,
                equals('string'),
              );

              expect(
                result[0].name,
                equals('string'),
              );

              expect(
                result[0].modeName,
                equals('string'),
              );

              expect(
                result[0].disruptions,
                isEmpty,
              );

              expect(
                result[0].created,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].modified,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses,
                isEmpty,
              );

              expect(
                result[0].routeSections?[0].name,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].direction,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].originationName,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].destinationName,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].originator,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].destination,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].serviceType,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].validTo,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].routeSections?[0].validFrom,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].serviceTypes?[0].name,
                equals('string'),
              );

              expect(
                result[0].serviceTypes?[0].uri,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'lineRoutesByIds',
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
                    '/line/${ids.join(',')}/route',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.Line, Tfl.Api.Presentation.Entities",
  "id": "string",
  "name": "string",
  "modeName": "string",
  "disruptions": [],
  "created": "1970-01-01T00:00:00Z",
  "modified": "1970-01-01T00:00:00Z",
  "lineStatuses": [],
  "routeSections": [
    {
      "$type": "Tfl.Api.Presentation.Entities.MatchedRoute, Tfl.Api.Presentation.Entities",
      "name": "string",
      "direction": "string",
      "originationName": "string",
      "destinationName": "string",
      "originator": "string",
      "destination": "string",
      "serviceType": "string",
      "validTo": "1970-01-01T00:00:00Z",
      "validFrom": "1970-01-01T00:00:00Z"
    }
  ],
  "serviceTypes": [
    {
      "$type": "Tfl.Api.Presentation.Entities.LineServiceTypeInfo, Tfl.Api.Presentation.Entities",
      "name": "string",
      "uri": "string"
    }
  ],
  "crowding": {
    "$type": "Tfl.Api.Presentation.Entities.Crowding, Tfl.Api.Presentation.Entities"
  }
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.line.lineRoutesByIds(ids);

              // Assert
              expect(
                result[0].id,
                equals('string'),
              );

              expect(
                result[0].name,
                equals('string'),
              );

              expect(
                result[0].modeName,
                equals('string'),
              );

              expect(
                result[0].disruptions,
                isEmpty,
              );

              expect(
                result[0].created,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].modified,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses,
                isEmpty,
              );

              expect(
                result[0].routeSections?[0].name,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].direction,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].originationName,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].destinationName,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].originator,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].destination,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].serviceType,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].validTo,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].routeSections?[0].validFrom,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].serviceTypes?[0].name,
                equals('string'),
              );

              expect(
                result[0].serviceTypes?[0].uri,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'routeByMode',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const modes = ['mode'];

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/line/mode/${modes.join(',')}/route',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.Line, Tfl.Api.Presentation.Entities",
    "id": "string",
    "name": "string",
    "modeName": "string",
    "disruptions": [],
    "created": "1970-01-01T00:00:00Z",
    "modified": "1970-01-01T00:00:00Z",
    "lineStatuses": [],
    "routeSections": [
      {
        "$type": "Tfl.Api.Presentation.Entities.MatchedRoute, Tfl.Api.Presentation.Entities",
        "name": "string",
        "direction": "string",
        "originationName": "string",
        "destinationName": "string",
        "originator": "string",
        "destination": "string",
        "serviceType": "string",
        "validTo": "1970-01-01T00:00:00Z",
        "validFrom": "1970-01-01T00:00:00Z"
      }
    ],
    "serviceTypes": [
      {
        "$type": "Tfl.Api.Presentation.Entities.LineServiceTypeInfo, Tfl.Api.Presentation.Entities",
        "name": "string",
        "uri": "string"
      }
    ],
    "crowding": {
      "$type": "Tfl.Api.Presentation.Entities.Crowding, Tfl.Api.Presentation.Entities"
    }
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.line.routeByMode(modes);

              // Assert
              expect(
                result[0].id,
                equals('string'),
              );

              expect(
                result[0].name,
                equals('string'),
              );

              expect(
                result[0].modeName,
                equals('string'),
              );

              expect(
                result[0].disruptions,
                isEmpty,
              );

              expect(
                result[0].created,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].modified,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses,
                isEmpty,
              );

              expect(
                result[0].routeSections?[0].name,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].direction,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].originationName,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].destinationName,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].originator,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].destination,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].serviceType,
                equals('string'),
              );

              expect(
                result[0].routeSections?[0].validTo,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].routeSections?[0].validFrom,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].serviceTypes?[0].name,
                equals('string'),
              );

              expect(
                result[0].serviceTypes?[0].uri,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'routeSequence',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const id = 'id';
              const direction = 'direction';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/line/$id/route/sequence/$direction',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.RouteSequence, Tfl.Api.Presentation.Entities",
  "lineId": "string",
  "lineName": "string",
  "direction": "string",
  "isOutboundOnly": true,
  "mode": "string",
  "lineStrings": [
    "string"
  ],
  "stations": [
    {
      "$type": "Tfl.Api.Presentation.Entities.MatchedStop, Tfl.Api.Presentation.Entities",
      "stationId": "string",
      "icsId": "string",
      "topMostParentId": "string",
      "modes": [
        "string"
      ],
      "stopType": "string",
      "zone": "string",
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
      "status": true,
      "id": "string",
      "name": "string",
      "lat": 0.0,
      "lon": 0.0
    }
  ],
  "stopPointSequences": [
    {
      "$type": "Tfl.Api.Presentation.Entities.StopPointSequence, Tfl.Api.Presentation.Entities",
      "lineId": "string",
      "lineName": "string",
      "direction": "string",
      "branchId": 0,
      "nextBranchIds": [],
      "prevBranchIds": [],
      "stopPoint": [
        {
          "$type": "Tfl.Api.Presentation.Entities.MatchedStop, Tfl.Api.Presentation.Entities",
          "parentId": "string",
          "stationId": "string",
          "icsId": "string",
          "topMostParentId": "string",
          "modes": [
            "string"
          ],
          "stopType": "string",
          "zone": "string",
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
          "status": true,
          "id": "string",
          "name": "string",
          "lat": 0.0,
          "lon": 0.0
        }
      ],
      "serviceType": "string"
    }
  ],
  "orderedLineRoutes": [
    {
      "$type": "Tfl.Api.Presentation.Entities.OrderedRoute, Tfl.Api.Presentation.Entities",
      "name": "string",
      "naptanIds": [
        "string"
      ],
      "serviceType": "string"
    }
  ]
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.line.routeSequence(id, direction);

              // Assert
              expect(
                result.lineId,
                equals('string'),
              );

              expect(
                result.lineName,
                equals('string'),
              );

              expect(
                result.direction,
                equals('string'),
              );

              expect(
                result.isOutboundOnly,
                isTrue,
              );

              expect(
                result.mode,
                equals('string'),
              );

              expect(
                result.lineStrings?[0],
                equals('string'),
              );

              expect(
                result.stations?[0].stationId,
                equals('string'),
              );

              expect(
                result.stations?[0].icsId,
                equals('string'),
              );

              expect(
                result.stations?[0].topMostParentId,
                equals('string'),
              );

              expect(
                result.stations?[0].modes?[0],
                equals('string'),
              );

              expect(
                result.stations?[0].stopType,
                equals('string'),
              );

              expect(
                result.stations?[0].zone,
                equals('string'),
              );

              expect(
                result.stations?[0].lines?[0].id,
                equals('string'),
              );

              expect(
                result.stations?[0].lines?[0].name,
                equals('string'),
              );

              expect(
                result.stations?[0].lines?[0].uri,
                equals('string'),
              );

              expect(
                result.stations?[0].lines?[0].type,
                equals('string'),
              );

              expect(
                result.stations?[0].lines?[0].routeType,
                equals('string'),
              );

              expect(
                result.stations?[0].lines?[0].status,
                equals('string'),
              );

              expect(
                result.stations?[0].status,
                isTrue,
              );

              expect(
                result.stations?[0].id,
                equals('string'),
              );

              expect(
                result.stations?[0].name,
                equals('string'),
              );

              expect(
                result.stations?[0].lat,
                equals(0.0),
              );

              expect(
                result.stations?[0].lon,
                equals(0.0),
              );

              expect(
                result.stopPointSequences?[0].lineId,
                equals('string'),
              );

              expect(
                result.stopPointSequences?[0].lineName,
                equals('string'),
              );

              expect(
                result.stopPointSequences?[0].direction,
                equals('string'),
              );

              expect(
                result.stopPointSequences?[0].branchId,
                equals(0),
              );

              expect(
                result.stopPointSequences?[0].nextBranchIds,
                isEmpty,
              );

              expect(
                result.stopPointSequences?[0].prevBranchIds,
                isEmpty,
              );

              expect(
                result.stopPointSequences?[0].stopPoint?[0].parentId,
                equals('string'),
              );

              expect(
                result.stopPointSequences?[0].stopPoint?[0].stationId,
                equals('string'),
              );

              expect(
                result.stopPointSequences?[0].stopPoint?[0].icsId,
                equals('string'),
              );

              expect(
                result.stopPointSequences?[0].stopPoint?[0].topMostParentId,
                equals('string'),
              );

              expect(
                result.stopPointSequences?[0].stopPoint?[0].modes?[0],
                equals('string'),
              );

              expect(
                result.stopPointSequences?[0].stopPoint?[0].stopType,
                equals('string'),
              );

              expect(
                result.stopPointSequences?[0].stopPoint?[0].zone,
                equals('string'),
              );

              expect(
                result.stopPointSequences?[0].stopPoint?[0].lines?[0].id,
                equals('string'),
              );

              expect(
                result.stopPointSequences?[0].stopPoint?[0].lines?[0].name,
                equals('string'),
              );

              expect(
                result.stopPointSequences?[0].stopPoint?[0].lines?[0].uri,
                equals('string'),
              );

              expect(
                result.stopPointSequences?[0].stopPoint?[0].lines?[0].type,
                equals('string'),
              );

              expect(
                result.stopPointSequences?[0].stopPoint?[0].lines?[0].routeType,
                equals('string'),
              );

              expect(
                result.stopPointSequences?[0].stopPoint?[0].lines?[0].status,
                equals('string'),
              );

              expect(
                result.stopPointSequences?[0].stopPoint?[0].status,
                isTrue,
              );

              expect(
                result.stopPointSequences?[0].stopPoint?[0].id,
                equals('string'),
              );

              expect(
                result.stopPointSequences?[0].stopPoint?[0].name,
                equals('string'),
              );

              expect(
                result.stopPointSequences?[0].stopPoint?[0].lat,
                equals(0.0),
              );

              expect(
                result.stopPointSequences?[0].stopPoint?[0].lon,
                equals(0.0),
              );

              expect(
                result.stopPointSequences?[0].serviceType,
                equals('string'),
              );

              expect(
                result.orderedLineRoutes?[0].name,
                equals('string'),
              );

              expect(
                result.orderedLineRoutes?[0].naptanIds?[0],
                equals('string'),
              );

              expect(
                result.orderedLineRoutes?[0].serviceType,
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
              final startDate = DateTime(1970, 1, 1);
              final endDate = DateTime(1970, 1, 1);

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/line/${ids.join(',')}/status/${startDate.year}-${startDate.month}-${startDate.day}/to/${endDate.year}-${endDate.month}-${endDate.day}',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.Line, Tfl.Api.Presentation.Entities",
    "id": "string",
    "name": "string",
    "modeName": "string",
    "disruptions": [],
    "created": "1970-01-01T00:00:00Z",
    "modified": "1970-01-01T00:00:00Z",
    "lineStatuses": [
      {
        "$type": "Tfl.Api.Presentation.Entities.LineStatus, Tfl.Api.Presentation.Entities",
        "id": 0,
        "statusSeverity": 0,
        "statusSeverityDescription": "string",
        "created": "1970-01-01T00:00:00Z",
        "validityPeriods": [
          {
            "$type": "Tfl.Api.Presentation.Entities.ValidityPeriod, Tfl.Api.Presentation.Entities",
            "fromDate": "1970-01-01T00:00:00Z",
            "toDate": "1970-01-01T00:00:00Z",
            "isNow": true
          }
        ]
      }
    ],
    "routeSections": [],
    "serviceTypes": [
      {
        "$type": "Tfl.Api.Presentation.Entities.LineServiceTypeInfo, Tfl.Api.Presentation.Entities",
        "name": "string",
        "uri": "string"
      }
    ],
    "crowding": {
      "$type": "Tfl.Api.Presentation.Entities.Crowding, Tfl.Api.Presentation.Entities"
    }
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.line.status(ids, startDate, endDate);

              // Assert
              expect(
                result[0].id,
                equals('string'),
              );

              expect(
                result[0].name,
                equals('string'),
              );

              expect(
                result[0].modeName,
                equals('string'),
              );

              expect(
                result[0].disruptions,
                isEmpty,
              );

              expect(
                result[0].created,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].modified,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses?[0].id,
                equals(0),
              );

              expect(
                result[0].lineStatuses?[0].statusSeverity,
                equals(0),
              );

              expect(
                result[0].lineStatuses?[0].statusSeverityDescription,
                equals('string'),
              );

              expect(
                result[0].lineStatuses?[0].created,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses?[0].validityPeriods?[0].fromDate,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses?[0].validityPeriods?[0].toDate,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses?[0].validityPeriods?[0].isNow,
                isTrue,
              );

              expect(
                result[0].routeSections,
                isEmpty,
              );

              expect(
                result[0].serviceTypes?[0].name,
                equals('string'),
              );

              expect(
                result[0].serviceTypes?[0].uri,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'statusByIds',
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
                    '/line/${ids.join(',')}/status',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.Line, Tfl.Api.Presentation.Entities",
    "id": "string",
    "name": "string",
    "modeName": "string",
    "disruptions": [],
    "created": "1970-01-01T00:00:00Z",
    "modified": "1970-01-01T00:00:00Z",
    "lineStatuses": [
      {
        "$type": "Tfl.Api.Presentation.Entities.LineStatus, Tfl.Api.Presentation.Entities",
        "id": 0,
        "statusSeverity": 0,
        "statusSeverityDescription": "string",
        "created": "1970-01-01T00:00:00Z",
        "validityPeriods": [
          {
            "$type": "Tfl.Api.Presentation.Entities.ValidityPeriod, Tfl.Api.Presentation.Entities",
            "fromDate": "1970-01-01T00:00:00Z",
            "toDate": "1970-01-01T00:00:00Z",
            "isNow": true
          }
        ]
      }
    ],
    "routeSections": [],
    "serviceTypes": [
      {
        "$type": "Tfl.Api.Presentation.Entities.LineServiceTypeInfo, Tfl.Api.Presentation.Entities",
        "name": "string",
        "uri": "string"
      }
    ],
    "crowding": {
      "$type": "Tfl.Api.Presentation.Entities.Crowding, Tfl.Api.Presentation.Entities"
    }
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.line.statusByIds(ids);

              // Assert
              expect(
                result[0].id,
                equals('string'),
              );

              expect(
                result[0].name,
                equals('string'),
              );

              expect(
                result[0].modeName,
                equals('string'),
              );

              expect(
                result[0].disruptions,
                isEmpty,
              );

              expect(
                result[0].created,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].modified,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses?[0].id,
                equals(0),
              );

              expect(
                result[0].lineStatuses?[0].statusSeverity,
                equals(0),
              );

              expect(
                result[0].lineStatuses?[0].statusSeverityDescription,
                equals('string'),
              );

              expect(
                result[0].lineStatuses?[0].created,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses?[0].validityPeriods?[0].fromDate,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses?[0].validityPeriods?[0].toDate,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses?[0].validityPeriods?[0].isNow,
                isTrue,
              );

              expect(
                result[0].routeSections,
                isEmpty,
              );

              expect(
                result[0].serviceTypes?[0].name,
                equals('string'),
              );

              expect(
                result[0].serviceTypes?[0].uri,
                equals('string'),
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
                    '/line/search/$query',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.RouteSearchResponse, Tfl.Api.Presentation.Entities",
  "input": "string",
  "searchMatches": [
    {
      "$type": "Tfl.Api.Presentation.Entities.RouteSearchMatch, Tfl.Api.Presentation.Entities",
      "lineId": "string",
      "mode": "string",
      "lineName": "string",
      "lineRouteSection": [
        {
          "$type": "Tfl.Api.Presentation.Entities.LineRouteSection, Tfl.Api.Presentation.Entities",
          "routeId": 0,
          "direction": "string",
          "destination": "string",
          "fromStation": "string",
          "toStation": "string",
          "serviceType": "string",
          "vehicleDestinationText": "string"
        }
      ],
      "matchedRouteSections": [],
      "matchedStops": []
    }
  ]
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.line.search(query);

              // Assert
              expect(
                result.input,
                equals('string'),
              );

              expect(
                result.searchMatches?[0].lineId,
                equals('string'),
              );

              expect(
                result.searchMatches?[0].mode,
                equals('string'),
              );

              expect(
                result.searchMatches?[0].lineName,
                equals('string'),
              );

              expect(
                result.searchMatches?[0].lineRouteSection?[0].routeId,
                equals(0),
              );

              expect(
                result.searchMatches?[0].lineRouteSection?[0].direction,
                equals('string'),
              );

              expect(
                result.searchMatches?[0].lineRouteSection?[0].destination,
                equals('string'),
              );

              expect(
                result.searchMatches?[0].lineRouteSection?[0].fromStation,
                equals('string'),
              );

              expect(
                result.searchMatches?[0].lineRouteSection?[0].toStation,
                equals('string'),
              );

              expect(
                result.searchMatches?[0].lineRouteSection?[0].serviceType,
                equals('string'),
              );

              expect(
                result.searchMatches?[0].lineRouteSection?[0]
                    .vehicleDestinationText,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'statusBySeverity',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const severity = 0;

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/line/status/$severity',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.Line, Tfl.Api.Presentation.Entities",
    "id": "string",
    "name": "string",
    "modeName": "string",
    "disruptions": [],
    "created": "1970-01-01T00:00:00Z",
    "modified": "1970-01-01T00:00:00Z",
    "lineStatuses": [
      {
        "$type": "Tfl.Api.Presentation.Entities.LineStatus, Tfl.Api.Presentation.Entities",
        "id": 0,
        "statusSeverity": 0,
        "statusSeverityDescription": "string",
        "created": "1970-01-01T00:00:00Z",
        "validityPeriods": [
          {
            "$type": "Tfl.Api.Presentation.Entities.ValidityPeriod, Tfl.Api.Presentation.Entities",
            "fromDate": "1970-01-01T00:00:00Z",
            "toDate": "1970-01-01T00:00:00Z",
            "isNow": true
          }
        ]
      }
    ],
    "routeSections": [],
    "serviceTypes": [
      {
        "$type": "Tfl.Api.Presentation.Entities.LineServiceTypeInfo, Tfl.Api.Presentation.Entities",
        "name": "string",
        "uri": "string"
      }
    ],
    "crowding": {
      "$type": "Tfl.Api.Presentation.Entities.Crowding, Tfl.Api.Presentation.Entities"
    }
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.line.statusBySeverity(severity);

              // Assert
              expect(
                result[0].id,
                equals('string'),
              );

              expect(
                result[0].name,
                equals('string'),
              );

              expect(
                result[0].modeName,
                equals('string'),
              );

              expect(
                result[0].disruptions,
                isEmpty,
              );

              expect(
                result[0].created,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].modified,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses?[0].id,
                equals(0),
              );

              expect(
                result[0].lineStatuses?[0].statusSeverity,
                equals(0),
              );

              expect(
                result[0].lineStatuses?[0].statusSeverityDescription,
                equals('string'),
              );

              expect(
                result[0].lineStatuses?[0].created,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses?[0].validityPeriods?[0].fromDate,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses?[0].validityPeriods?[0].toDate,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses?[0].validityPeriods?[0].isNow,
                isTrue,
              );

              expect(
                result[0].routeSections,
                isEmpty,
              );

              expect(
                result[0].serviceTypes?[0].name,
                equals('string'),
              );

              expect(
                result[0].serviceTypes?[0].uri,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'statusByMode',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const modes = ['mode'];

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/line/mode/${modes.join(',')}/status',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.Line, Tfl.Api.Presentation.Entities",
    "id": "string",
    "name": "string",
    "modeName": "string",
    "disruptions": [],
    "created": "1970-01-01T00:00:00Z",
    "modified": "1970-01-01T00:00:00Z",
    "lineStatuses": [
      {
        "$type": "Tfl.Api.Presentation.Entities.LineStatus, Tfl.Api.Presentation.Entities",
        "id": 0,
        "statusSeverity": 0,
        "statusSeverityDescription": "string",
        "created": "1970-01-01T00:00:00Z",
        "validityPeriods": [
          {
            "$type": "Tfl.Api.Presentation.Entities.ValidityPeriod, Tfl.Api.Presentation.Entities",
            "fromDate": "1970-01-01T00:00:00Z",
            "toDate": "1970-01-01T00:00:00Z",
            "isNow": true
          }
        ]
      }
    ],
    "routeSections": [],
    "serviceTypes": [
      {
        "$type": "Tfl.Api.Presentation.Entities.LineServiceTypeInfo, Tfl.Api.Presentation.Entities",
        "name": "string",
        "uri": "string"
      }
    ],
    "crowding": {
      "$type": "Tfl.Api.Presentation.Entities.Crowding, Tfl.Api.Presentation.Entities"
    }
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.line.statusByMode(modes);

              // Assert
              expect(
                result[0].id,
                equals('string'),
              );

              expect(
                result[0].name,
                equals('string'),
              );

              expect(
                result[0].modeName,
                equals('string'),
              );

              expect(
                result[0].disruptions,
                isEmpty,
              );

              expect(
                result[0].created,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].modified,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses?[0].id,
                equals(0),
              );

              expect(
                result[0].lineStatuses?[0].statusSeverity,
                equals(0),
              );

              expect(
                result[0].lineStatuses?[0].statusSeverityDescription,
                equals('string'),
              );

              expect(
                result[0].lineStatuses?[0].created,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses?[0].validityPeriods?[0].fromDate,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses?[0].validityPeriods?[0].toDate,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lineStatuses?[0].validityPeriods?[0].isNow,
                isTrue,
              );

              expect(
                result[0].routeSections,
                isEmpty,
              );

              expect(
                result[0].serviceTypes?[0].name,
                equals('string'),
              );

              expect(
                result[0].serviceTypes?[0].uri,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'stopPoints',
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
                    '/line/$id/stoppoints',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
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
    "placeType": "string",
    "additionalProperties": [
      {
        "$type": "Tfl.Api.Presentation.Entities.AdditionalProperties, Tfl.Api.Presentation.Entities",
        "category": "string",
        "key": "string",
        "sourceSystemKey": "string",
        "value": "string"
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
              final result = await api.line.stopPoints(id);

              // Assert
              expect(
                result[0].naptanId,
                equals('string'),
              );

              expect(
                result[0].modes?[0],
                equals('string'),
              );

              expect(
                result[0].icsCode,
                equals('string'),
              );

              expect(
                result[0].stopType,
                equals('string'),
              );

              expect(
                result[0].stationNaptan,
                equals('string'),
              );

              expect(
                result[0].hubNaptanCode,
                equals('string'),
              );

              expect(
                result[0].lines?[0].id,
                equals('string'),
              );

              expect(
                result[0].lines?[0].name,
                equals('string'),
              );

              expect(
                result[0].lines?[0].uri,
                equals('string'),
              );

              expect(
                result[0].lines?[0].type,
                equals('string'),
              );

              expect(
                result[0].lines?[0].routeType,
                equals('string'),
              );

              expect(
                result[0].lines?[0].status,
                equals('string'),
              );

              expect(
                result[0].lineGroup?[0].stationAtcoCode,
                equals('string'),
              );

              expect(
                result[0].lineGroup?[0].lineIdentifier?[0],
                equals('string'),
              );

              expect(
                result[0].lineModeGroups?[0].modeName,
                equals('string'),
              );

              expect(
                result[0].lineModeGroups?[0].lineIdentifier?[0],
                equals('string'),
              );

              expect(
                result[0].status,
                isTrue,
              );

              expect(
                result[0].id,
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
        'timetable',
        () {
          test(
            'should return the result with a disambiguation',
            () async {
              // Arrange
              const fromStopPointId = 'fromStopPointId';
              const id = 'id';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/line/$id/timetable/$fromStopPointId',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.TimetableResponse, Tfl.Api.Presentation.Entities",
  "disambiguation": {
    "$type": "Tfl.Api.Presentation.Entities.Timetables.Disambiguation, Tfl.Api.Presentation.Entities",
    "disambiguationOptions": [
      {
        "$type": "Tfl.Api.Presentation.Entities.Timetables.DisambiguationOption, Tfl.Api.Presentation.Entities",
        "description": "string",
        "uri": "string"
      }
    ]
  }
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.line.timetable(fromStopPointId, id);

              // Assert
              expect(
                result.disambiguation?.disambiguationOptions?[0].description,
                equals('string'),
              );

              expect(
                result.disambiguation?.disambiguationOptions?[0].uri,
                equals('string'),
              );
            },
          );

          test(
            'should return the result with a timetable',
            () async {
              // Arrange
              const fromStopPointId = 'fromStopPointId';
              const id = 'id';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/line/$id/timetable/$fromStopPointId',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.TimetableResponse, Tfl.Api.Presentation.Entities",
  "lineId": "string",
  "lineName": "string",
  "direction": "string",
  "stations": [
    {
      "$type": "Tfl.Api.Presentation.Entities.MatchedStop, Tfl.Api.Presentation.Entities",
      "stationId": "string",
      "icsId": "string",
      "topMostParentId": "string",
      "modes": [
        "string"
      ],
      "stopType": "string",
      "zone": "string",
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
      "status": true,
      "id": "string",
      "name": "string",
      "lat": 0.0,
      "lon": 0.0
    }
  ],
  "stops": [
    {
      "$type": "Tfl.Api.Presentation.Entities.MatchedStop, Tfl.Api.Presentation.Entities",
      "parentId": "string",
      "stationId": "string",
      "icsId": "string",
      "topMostParentId": "string",
      "modes": [
        "string"
      ],
      "stopType": "string",
      "zone": "string",
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
      "status": true,
      "id": "string",
      "name": "string",
      "lat": 0.0,
      "lon": 0.0
    }
  ],
  "timetable": {
    "$type": "Tfl.Api.Presentation.Entities.Timetable, Tfl.Api.Presentation.Entities",
    "departureStopId": "string",
    "routes": [
      {
        "$type": "Tfl.Api.Presentation.Entities.TimetableRoute, Tfl.Api.Presentation.Entities",
        "stationIntervals": [
          {
            "$type": "Tfl.Api.Presentation.Entities.StationInterval, Tfl.Api.Presentation.Entities",
            "id": "string",
            "intervals": [
              {
                "$type": "Tfl.Api.Presentation.Entities.Interval, Tfl.Api.Presentation.Entities",
                "stopId": "string",
                "timeToArrival": 0.0
              }
            ]
          }
        ],
        "schedules": [
          {
            "$type": "Tfl.Api.Presentation.Entities.Schedule, Tfl.Api.Presentation.Entities",
            "name": "string",
            "knownJourneys": [
              {
                "$type": "Tfl.Api.Presentation.Entities.KnownJourney, Tfl.Api.Presentation.Entities",
                "hour": "string",
                "minute": "string",
                "intervalId": 0
              }
            ],
            "firstJourney": {
              "$type": "Tfl.Api.Presentation.Entities.KnownJourney, Tfl.Api.Presentation.Entities",
              "hour": "string",
              "minute": "string",
              "intervalId": 0
            },
            "lastJourney": {
              "$type": "Tfl.Api.Presentation.Entities.KnownJourney, Tfl.Api.Presentation.Entities",
              "hour": "string",
              "minute": "string",
              "intervalId": 0
            },
            "periods": [
              {
                "$type": "Tfl.Api.Presentation.Entities.Period, Tfl.Api.Presentation.Entities",
                "type": "string",
                "fromTime": {
                  "$type": "Tfl.Api.Presentation.Entities.TwentyFourHourClockTime, Tfl.Api.Presentation.Entities",
                  "hour": "string",
                  "minute": "string"
                },
                "toTime": {
                  "$type": "Tfl.Api.Presentation.Entities.TwentyFourHourClockTime, Tfl.Api.Presentation.Entities",
                  "hour": "string",
                  "minute": "string"
                }
              }
            ]
          }
        ]
      }
    ]
  }
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.line.timetable(fromStopPointId, id);

              // Assert
              expect(
                result.lineId,
                equals('string'),
              );

              expect(
                result.lineName,
                equals('string'),
              );

              expect(
                result.direction,
                equals('string'),
              );

              expect(
                result.stations?[0].stationId,
                equals('string'),
              );

              expect(
                result.stations?[0].icsId,
                equals('string'),
              );

              expect(
                result.stations?[0].topMostParentId,
                equals('string'),
              );

              expect(
                result.stations?[0].modes?[0],
                equals('string'),
              );

              expect(
                result.stations?[0].stopType,
                equals('string'),
              );

              expect(
                result.stations?[0].zone,
                equals('string'),
              );

              expect(
                result.stations?[0].lines?[0].id,
                equals('string'),
              );

              expect(
                result.stations?[0].lines?[0].name,
                equals('string'),
              );

              expect(
                result.stations?[0].lines?[0].uri,
                equals('string'),
              );

              expect(
                result.stations?[0].lines?[0].type,
                equals('string'),
              );

              expect(
                result.stations?[0].lines?[0].routeType,
                equals('string'),
              );

              expect(
                result.stations?[0].lines?[0].status,
                equals('string'),
              );

              expect(
                result.stations?[0].status,
                isTrue,
              );

              expect(
                result.stations?[0].id,
                equals('string'),
              );

              expect(
                result.stations?[0].name,
                equals('string'),
              );

              expect(
                result.stations?[0].lat,
                equals(0.0),
              );

              expect(
                result.stations?[0].lon,
                equals(0.0),
              );

              expect(
                result.stops?[0].parentId,
                equals('string'),
              );

              expect(
                result.stops?[0].stationId,
                equals('string'),
              );

              expect(
                result.stops?[0].icsId,
                equals('string'),
              );

              expect(
                result.stops?[0].topMostParentId,
                equals('string'),
              );

              expect(
                result.stops?[0].modes?[0],
                equals('string'),
              );

              expect(
                result.stops?[0].stopType,
                equals('string'),
              );

              expect(
                result.stops?[0].zone,
                equals('string'),
              );

              expect(
                result.stops?[0].lines?[0].id,
                equals('string'),
              );

              expect(
                result.stops?[0].lines?[0].name,
                equals('string'),
              );

              expect(
                result.stops?[0].lines?[0].uri,
                equals('string'),
              );

              expect(
                result.stops?[0].lines?[0].type,
                equals('string'),
              );

              expect(
                result.stops?[0].lines?[0].routeType,
                equals('string'),
              );

              expect(
                result.stops?[0].lines?[0].status,
                equals('string'),
              );

              expect(
                result.stops?[0].status,
                isTrue,
              );

              expect(
                result.stops?[0].id,
                equals('string'),
              );

              expect(
                result.stops?[0].name,
                equals('string'),
              );

              expect(
                result.stops?[0].lat,
                equals(0.0),
              );

              expect(
                result.stops?[0].lon,
                equals(0.0),
              );

              expect(
                result.timetable?.departureStopId,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].stationIntervals?[0].id,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].stationIntervals?[0].intervals?[0]
                    .stopId,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].stationIntervals?[0].intervals?[0]
                    .timeToArrival,
                equals(0.0),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].name,
                equals('string'),
              );

              expect(
                result
                    .timetable?.routes?[0].schedules?[0].knownJourneys?[0].hour,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].knownJourneys?[0]
                    .minute,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].knownJourneys?[0]
                    .intervalId,
                equals(0),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].firstJourney?.hour,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].firstJourney?.minute,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].firstJourney
                    ?.intervalId,
                equals(0),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].lastJourney?.hour,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].lastJourney?.minute,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].lastJourney
                    ?.intervalId,
                equals(0),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].periods?[0].type,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].periods?[0].fromTime
                    ?.hour,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].periods?[0].fromTime
                    ?.minute,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].periods?[0].toTime
                    ?.hour,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].periods?[0].toTime
                    ?.minute,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'timetableTo',
        () {
          test(
            'should return the result with a disambiguation',
            () async {
              // Arrange
              const fromStopPointId = 'fromStopPointId';
              const id = 'id';
              const toStopPointId = 'toStopPointId';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/line/$id/timetable/$fromStopPointId/to/$toStopPointId',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.TimetableResponse, Tfl.Api.Presentation.Entities",
  "disambiguation": {
    "$type": "Tfl.Api.Presentation.Entities.Timetables.Disambiguation, Tfl.Api.Presentation.Entities",
    "disambiguationOptions": [
      {
        "$type": "Tfl.Api.Presentation.Entities.Timetables.DisambiguationOption, Tfl.Api.Presentation.Entities",
        "description": "string",
        "uri": "string"
      }
    ]
  }
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.line
                  .timetableTo(fromStopPointId, id, toStopPointId);

              // Assert
              expect(
                result.disambiguation?.disambiguationOptions?[0].description,
                equals('string'),
              );

              expect(
                result.disambiguation?.disambiguationOptions?[0].uri,
                equals('string'),
              );
            },
          );

          test(
            'should return the result with a timetable',
            () async {
              // Arrange
              const fromStopPointId = 'fromStopPointId';
              const id = 'id';
              const toStopPointId = 'toStopPointId';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/line/$id/timetable/$fromStopPointId/to/$toStopPointId',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.TimetableResponse, Tfl.Api.Presentation.Entities",
  "lineId": "string",
  "lineName": "string",
  "direction": "string",
  "stations": [
    {
      "$type": "Tfl.Api.Presentation.Entities.MatchedStop, Tfl.Api.Presentation.Entities",
      "stationId": "string",
      "icsId": "string",
      "topMostParentId": "string",
      "modes": [
        "string"
      ],
      "stopType": "string",
      "zone": "string",
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
      "status": true,
      "id": "string",
      "name": "string",
      "lat": 0.0,
      "lon": 0.0
    }
  ],
  "stops": [
    {
      "$type": "Tfl.Api.Presentation.Entities.MatchedStop, Tfl.Api.Presentation.Entities",
      "parentId": "string",
      "stationId": "string",
      "icsId": "string",
      "topMostParentId": "string",
      "modes": [
        "string"
      ],
      "stopType": "string",
      "zone": "string",
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
      "status": true,
      "id": "string",
      "name": "string",
      "lat": 0.0,
      "lon": 0.0
    }
  ],
  "timetable": {
    "$type": "Tfl.Api.Presentation.Entities.Timetable, Tfl.Api.Presentation.Entities",
    "departureStopId": "string",
    "routes": [
      {
        "$type": "Tfl.Api.Presentation.Entities.TimetableRoute, Tfl.Api.Presentation.Entities",
        "stationIntervals": [
          {
            "$type": "Tfl.Api.Presentation.Entities.StationInterval, Tfl.Api.Presentation.Entities",
            "id": "string",
            "intervals": [
              {
                "$type": "Tfl.Api.Presentation.Entities.Interval, Tfl.Api.Presentation.Entities",
                "stopId": "string",
                "timeToArrival": 0.0
              }
            ]
          }
        ],
        "schedules": [
          {
            "$type": "Tfl.Api.Presentation.Entities.Schedule, Tfl.Api.Presentation.Entities",
            "name": "string",
            "knownJourneys": [
              {
                "$type": "Tfl.Api.Presentation.Entities.KnownJourney, Tfl.Api.Presentation.Entities",
                "hour": "string",
                "minute": "string",
                "intervalId": 0
              }
            ],
            "firstJourney": {
              "$type": "Tfl.Api.Presentation.Entities.KnownJourney, Tfl.Api.Presentation.Entities",
              "hour": "string",
              "minute": "string",
              "intervalId": 0
            },
            "lastJourney": {
              "$type": "Tfl.Api.Presentation.Entities.KnownJourney, Tfl.Api.Presentation.Entities",
              "hour": "string",
              "minute": "string",
              "intervalId": 0
            },
            "periods": [
              {
                "$type": "Tfl.Api.Presentation.Entities.Period, Tfl.Api.Presentation.Entities",
                "type": "string",
                "fromTime": {
                  "$type": "Tfl.Api.Presentation.Entities.TwentyFourHourClockTime, Tfl.Api.Presentation.Entities",
                  "hour": "string",
                  "minute": "string"
                },
                "toTime": {
                  "$type": "Tfl.Api.Presentation.Entities.TwentyFourHourClockTime, Tfl.Api.Presentation.Entities",
                  "hour": "string",
                  "minute": "string"
                }
              }
            ]
          }
        ]
      }
    ]
  }
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.line
                  .timetableTo(fromStopPointId, id, toStopPointId);

              // Assert
              expect(
                result.lineId,
                equals('string'),
              );

              expect(
                result.lineName,
                equals('string'),
              );

              expect(
                result.direction,
                equals('string'),
              );

              expect(
                result.stations?[0].stationId,
                equals('string'),
              );

              expect(
                result.stations?[0].icsId,
                equals('string'),
              );

              expect(
                result.stations?[0].topMostParentId,
                equals('string'),
              );

              expect(
                result.stations?[0].modes?[0],
                equals('string'),
              );

              expect(
                result.stations?[0].stopType,
                equals('string'),
              );

              expect(
                result.stations?[0].zone,
                equals('string'),
              );

              expect(
                result.stations?[0].lines?[0].id,
                equals('string'),
              );

              expect(
                result.stations?[0].lines?[0].name,
                equals('string'),
              );

              expect(
                result.stations?[0].lines?[0].uri,
                equals('string'),
              );

              expect(
                result.stations?[0].lines?[0].type,
                equals('string'),
              );

              expect(
                result.stations?[0].lines?[0].routeType,
                equals('string'),
              );

              expect(
                result.stations?[0].lines?[0].status,
                equals('string'),
              );

              expect(
                result.stations?[0].status,
                isTrue,
              );

              expect(
                result.stations?[0].id,
                equals('string'),
              );

              expect(
                result.stations?[0].name,
                equals('string'),
              );

              expect(
                result.stations?[0].lat,
                equals(0.0),
              );

              expect(
                result.stations?[0].lon,
                equals(0.0),
              );

              expect(
                result.stops?[0].parentId,
                equals('string'),
              );

              expect(
                result.stops?[0].stationId,
                equals('string'),
              );

              expect(
                result.stops?[0].icsId,
                equals('string'),
              );

              expect(
                result.stops?[0].topMostParentId,
                equals('string'),
              );

              expect(
                result.stops?[0].modes?[0],
                equals('string'),
              );

              expect(
                result.stops?[0].stopType,
                equals('string'),
              );

              expect(
                result.stops?[0].zone,
                equals('string'),
              );

              expect(
                result.stops?[0].lines?[0].id,
                equals('string'),
              );

              expect(
                result.stops?[0].lines?[0].name,
                equals('string'),
              );

              expect(
                result.stops?[0].lines?[0].uri,
                equals('string'),
              );

              expect(
                result.stops?[0].lines?[0].type,
                equals('string'),
              );

              expect(
                result.stops?[0].lines?[0].routeType,
                equals('string'),
              );

              expect(
                result.stops?[0].lines?[0].status,
                equals('string'),
              );

              expect(
                result.stops?[0].status,
                isTrue,
              );

              expect(
                result.stops?[0].id,
                equals('string'),
              );

              expect(
                result.stops?[0].name,
                equals('string'),
              );

              expect(
                result.stops?[0].lat,
                equals(0.0),
              );

              expect(
                result.stops?[0].lon,
                equals(0.0),
              );

              expect(
                result.timetable?.departureStopId,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].stationIntervals?[0].id,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].stationIntervals?[0].intervals?[0]
                    .stopId,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].stationIntervals?[0].intervals?[0]
                    .timeToArrival,
                equals(0.0),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].name,
                equals('string'),
              );

              expect(
                result
                    .timetable?.routes?[0].schedules?[0].knownJourneys?[0].hour,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].knownJourneys?[0]
                    .minute,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].knownJourneys?[0]
                    .intervalId,
                equals(0),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].firstJourney?.hour,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].firstJourney?.minute,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].firstJourney
                    ?.intervalId,
                equals(0),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].lastJourney?.hour,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].lastJourney?.minute,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].lastJourney
                    ?.intervalId,
                equals(0),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].periods?[0].type,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].periods?[0].fromTime
                    ?.hour,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].periods?[0].fromTime
                    ?.minute,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].periods?[0].toTime
                    ?.hour,
                equals('string'),
              );

              expect(
                result.timetable?.routes?[0].schedules?[0].periods?[0].toTime
                    ?.minute,
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
                    '/line/${ids.join(',')}/disruption',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.Disruption, Tfl.Api.Presentation.Entities",
    "category": "string",
    "type": "string",
    "categoryDescription": "string",
    "description": "string",
    "created": "1970-01-01T00:00:00Z",
    "lastUpdate": "1970-01-01T00:00:00Z",
    "affectedRoutes": [],
    "affectedStops": [],
    "closureText": "string"
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.line.disruption(ids);

              // Assert
              expect(
                result[0].category,
                equals('string'),
              );

              expect(
                result[0].type,
                equals('string'),
              );

              expect(
                result[0].categoryDescription,
                equals('string'),
              );

              expect(
                result[0].description,
                equals('string'),
              );

              expect(
                result[0].created,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lastUpdate,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].affectedRoutes,
                isEmpty,
              );

              expect(
                result[0].affectedStops,
                isEmpty,
              );

              expect(
                result[0].closureText,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'disruptionByMode',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const modes = ['mode'];

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/line/mode/${modes.join(',')}/disruption',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.Disruption, Tfl.Api.Presentation.Entities",
    "category": "string",
    "type": "string",
    "categoryDescription": "string",
    "description": "string",
    "created": "1970-01-01T00:00:00Z",
    "lastUpdate": "1970-01-01T00:00:00Z",
    "affectedRoutes": [],
    "affectedStops": [],
    "closureText": "string"
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.line.disruptionByMode(modes);

              // Assert
              expect(
                result[0].category,
                equals('string'),
              );

              expect(
                result[0].type,
                equals('string'),
              );

              expect(
                result[0].categoryDescription,
                equals('string'),
              );

              expect(
                result[0].description,
                equals('string'),
              );

              expect(
                result[0].created,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].lastUpdate,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].affectedRoutes,
                isEmpty,
              );

              expect(
                result[0].affectedStops,
                isEmpty,
              );

              expect(
                result[0].closureText,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'arrivalsWithStopPoint',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const ids = ['id'];
              const stopPointId = 'stopPointId';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/line/${ids.join(',')}/arrivals/$stopPointId',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.Prediction, Tfl.Api.Presentation.Entities",
    "id": "string",
    "operationType": 0,
    "vehicleId": "string",
    "naptanId": "string",
    "stationName": "string",
    "lineId": "string",
    "lineName": "string",
    "platformName": "string",
    "direction": "string",
    "bearing": "string",
    "destinationNaptanId": "string",
    "destinationName": "string",
    "timestamp": "1970-01-01T00:00:00Z",
    "timeToStation": 0,
    "currentLocation": "string",
    "towards": "string",
    "expectedArrival": "1970-01-01T00:00:00Z",
    "timeToLive": "1970-01-01T00:00:00Z",
    "modeName": "string",
    "timing": {
      "$type": "Tfl.Api.Presentation.Entities.PredictionTiming, Tfl.Api.Presentation.Entities",
      "countdownServerAdjustment": "string",
      "source": "1970-01-01T00:00:00Z",
      "insert": "1970-01-01T00:00:00Z",
      "read": "1970-01-01T00:00:00Z",
      "sent": "1970-01-01T00:00:00Z",
      "received": "1970-01-01T00:00:00Z"
    }
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result =
                  await api.line.arrivalsWithStopPoint(ids, stopPointId);

              // Assert
              expect(
                result[0].id,
                equals('string'),
              );

              expect(
                result[0].operationType,
                equals(0),
              );

              expect(
                result[0].vehicleId,
                equals('string'),
              );

              expect(
                result[0].naptanId,
                equals('string'),
              );

              expect(
                result[0].stationName,
                equals('string'),
              );

              expect(
                result[0].lineId,
                equals('string'),
              );

              expect(
                result[0].lineName,
                equals('string'),
              );

              expect(
                result[0].platformName,
                equals('string'),
              );

              expect(
                result[0].direction,
                equals('string'),
              );

              expect(
                result[0].bearing,
                equals('string'),
              );

              expect(
                result[0].destinationNaptanId,
                equals('string'),
              );

              expect(
                result[0].destinationName,
                equals('string'),
              );

              expect(
                result[0].timestamp,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].timeToStation,
                equals(0),
              );

              expect(
                result[0].currentLocation,
                equals('string'),
              );

              expect(
                result[0].towards,
                equals('string'),
              );

              expect(
                result[0].expectedArrival,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].timeToLive,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].modeName,
                equals('string'),
              );

              expect(
                result[0].timing?.countdownServerAdjustment,
                equals('string'),
              );

              expect(
                result[0].timing?.source,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].timing?.insert,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].timing?.read,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].timing?.sent,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].timing?.received,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );
            },
          );
        },
      );

      group(
        'arrivals',
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
                    '/line/${ids.join(',')}/arrivals',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.Prediction, Tfl.Api.Presentation.Entities",
    "id": "string",
    "operationType": 0,
    "vehicleId": "string",
    "naptanId": "string",
    "stationName": "string",
    "lineId": "string",
    "lineName": "string",
    "platformName": "string",
    "direction": "string",
    "bearing": "string",
    "destinationNaptanId": "string",
    "destinationName": "string",
    "timestamp": "1970-01-01T00:00:00Z",
    "timeToStation": 0,
    "currentLocation": "string",
    "towards": "string",
    "expectedArrival": "1970-01-01T00:00:00Z",
    "timeToLive": "1970-01-01T00:00:00Z",
    "modeName": "string",
    "timing": {
      "$type": "Tfl.Api.Presentation.Entities.PredictionTiming, Tfl.Api.Presentation.Entities",
      "countdownServerAdjustment": "string",
      "source": "1970-01-01T00:00:00Z",
      "insert": "1970-01-01T00:00:00Z",
      "read": "1970-01-01T00:00:00Z",
      "sent": "1970-01-01T00:00:00Z",
      "received": "1970-01-01T00:00:00Z"
    }
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.line.arrivals(ids);

              // Assert
              expect(
                result[0].id,
                equals('string'),
              );

              expect(
                result[0].operationType,
                equals(0),
              );

              expect(
                result[0].vehicleId,
                equals('string'),
              );

              expect(
                result[0].naptanId,
                equals('string'),
              );

              expect(
                result[0].stationName,
                equals('string'),
              );

              expect(
                result[0].lineId,
                equals('string'),
              );

              expect(
                result[0].lineName,
                equals('string'),
              );

              expect(
                result[0].platformName,
                equals('string'),
              );

              expect(
                result[0].direction,
                equals('string'),
              );

              expect(
                result[0].bearing,
                equals('string'),
              );

              expect(
                result[0].destinationNaptanId,
                equals('string'),
              );

              expect(
                result[0].destinationName,
                equals('string'),
              );

              expect(
                result[0].timestamp,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].timeToStation,
                equals(0),
              );

              expect(
                result[0].currentLocation,
                equals('string'),
              );

              expect(
                result[0].towards,
                equals('string'),
              );

              expect(
                result[0].expectedArrival,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].timeToLive,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].modeName,
                equals('string'),
              );

              expect(
                result[0].timing?.countdownServerAdjustment,
                equals('string'),
              );

              expect(
                result[0].timing?.source,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].timing?.insert,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].timing?.read,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].timing?.sent,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].timing?.received,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
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
