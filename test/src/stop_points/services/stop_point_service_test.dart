import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

import 'stop_point_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late TflApiClient api;
  late http.Client client;

  group(
    'StopPointService',
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
                    '/stoppoint/meta/categories',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.StopPointCategory, Tfl.Api.Presentation.Entities",
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
              final result = await api.stopPoint.metaCategories();

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
        'metaStopTypes',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              when(
                client.get(
                  Uri.https(
                    authority,
                    '/stoppoint/meta/stoptypes',
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
              final result = await api.stopPoint.metaStopTypes();

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
                    '/stoppoint/meta/modes',
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
              final result = await api.stopPoint.metaModes();

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
                    '/stoppoint/${ids.join(',')}',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.StopPoint, Tfl.Api.Presentation.Entities",
  "naptanId": "string",
  "modes": [
    "string"
  ],
  "icsCode": "string",
  "stopType": "string",
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
      "naptanIdReference": "string",
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
              final result = await api.stopPoint.get(ids);

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
                result[0].lineGroup?[0].naptanIdReference,
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
        'getPlaceTypes',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const id = 'id';
              const placeTypes = ['placeType'];

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/stoppoint/$id/placetypes',
                    {
                      'placeTypes': placeTypes,
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
              final result = await api.stopPoint.getPlaceTypes(id, placeTypes);

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
        'crowding',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const id = 'id';
              const line = 'line';
              const direction = 'direction';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/stoppoint/$id/crowding/$line',
                    {
                      'direction': direction,
                    },
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.StopPoint, Tfl.Api.Presentation.Entities",
  "naptanId": "string",
  "modes": [
    "string"
  ],
  "icsCode": "string",
  "stopType": "string",
  "hubNaptanCode": "string",
  "lines": [
    {
      "$type": "Tfl.Api.Presentation.Entities.Identifier, Tfl.Api.Presentation.Entities",
      "id": "string",
      "name": "string",
      "uri": "string",
      "type": "string",
      "crowding": {
        "$type": "Tfl.Api.Presentation.Entities.Crowding, Tfl.Api.Presentation.Entities",
        "passengerFlows": [
          {
            "$type": "Tfl.Api.Presentation.Entities.PassengerFlow, Tfl.Api.Presentation.Entities",
            "timeSlice": "string",
            "value": 0
          }
        ],
        "trainLoadings": [
          {
            "$type": "Tfl.Api.Presentation.Entities.TrainLoading, Tfl.Api.Presentation.Entities",
            "line": "string",
            "lineDirection": "string",
            "platformDirection": "string",
            "direction": "string",
            "naptanTo": "string",
            "timeSlice": "string",
            "value": 0
          }
        ]
      },
      "routeType": "string",
      "status": "string"
    }
  ],
  "lineGroup": [
    {
      "$type": "Tfl.Api.Presentation.Entities.LineGroup, Tfl.Api.Presentation.Entities",
      "naptanIdReference": "string",
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
              final result = await api.stopPoint.crowding(id, line, direction);

              // Assert
              expect(
                result.naptanId,
                equals('string'),
              );

              expect(
                result.modes?[0],
                equals('string'),
              );

              expect(
                result.icsCode,
                equals('string'),
              );

              expect(
                result.stopType,
                equals('string'),
              );

              expect(
                result.hubNaptanCode,
                equals('string'),
              );

              expect(
                result.lines?[0].id,
                equals('string'),
              );

              expect(
                result.lines?[0].name,
                equals('string'),
              );

              expect(
                result.lines?[0].uri,
                equals('string'),
              );

              expect(
                result.lines?[0].type,
                equals('string'),
              );

              expect(
                result.lines?[0].crowding?.passengerFlows?[0].timeSlice,
                equals('string'),
              );

              expect(
                result.lines?[0].crowding?.passengerFlows?[0].value,
                equals(0),
              );

              expect(
                result.lines?[0].crowding?.trainLoadings?[0].line,
                equals('string'),
              );

              expect(
                result.lines?[0].crowding?.trainLoadings?[0].lineDirection,
                equals('string'),
              );

              expect(
                result.lines?[0].crowding?.trainLoadings?[0].platformDirection,
                equals('string'),
              );

              expect(
                result.lines?[0].crowding?.trainLoadings?[0].direction,
                equals('string'),
              );

              expect(
                result.lines?[0].crowding?.trainLoadings?[0].naptanTo,
                equals('string'),
              );

              expect(
                result.lines?[0].crowding?.trainLoadings?[0].timeSlice,
                equals('string'),
              );

              expect(
                result.lines?[0].crowding?.trainLoadings?[0].value,
                equals(0),
              );

              expect(
                result.lines?[0].routeType,
                equals('string'),
              );

              expect(
                result.lines?[0].status,
                equals('string'),
              );

              expect(
                result.lineGroup?[0].naptanIdReference,
                equals('string'),
              );

              expect(
                result.lineGroup?[0].stationAtcoCode,
                equals('string'),
              );

              expect(
                result.lineGroup?[0].lineIdentifier?[0],
                equals('string'),
              );

              expect(
                result.lineModeGroups?[0].modeName,
                equals('string'),
              );

              expect(
                result.lineModeGroups?[0].lineIdentifier?[0],
                equals('string'),
              );

              expect(
                result.status,
                isTrue,
              );

              expect(
                result.id,
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
                    '/stoppoint/type/${types.join(',')}',
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
        "naptanIdReference": "string",
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
              final result = await api.stopPoint.getByType(types);

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
                result[0].lineGroup?[0].naptanIdReference,
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
        'getByTypeWithPagination',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const types = ['type'];
              const page = 1;

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/stoppoint/type/${types.join(',')}/page/$page',
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
        "naptanIdReference": "string",
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
              final result =
                  await api.stopPoint.getByTypeWithPagination(types, page);

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
                result[0].lineGroup?[0].naptanIdReference,
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
        'getServiceTypes',
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
                    '/stoppoint/servicetypes',
                    {
                      'id': id,
                    },
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.LineServiceType, Tfl.Api.Presentation.Entities",
    "lineName": "string",
    "lineSpecificServiceTypes": [
      {
        "$type": "Tfl.Api.Presentation.Entities.LineSpecificServiceType, Tfl.Api.Presentation.Entities",
        "serviceType": {
          "$type": "Tfl.Api.Presentation.Entities.LineServiceTypeInfo, Tfl.Api.Presentation.Entities",
          "name": "string",
          "uri": "string"
        },
        "stopServesServiceType": true
      }
    ]
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.stopPoint.getServiceTypes(id);

              // Assert
              expect(
                result[0].lineName,
                equals('string'),
              );

              expect(
                result[0].lineSpecificServiceTypes?[0].serviceType?.name,
                equals('string'),
              );

              expect(
                result[0].lineSpecificServiceTypes?[0].serviceType?.uri,
                equals('string'),
              );

              expect(
                result[0].lineSpecificServiceTypes?[0].stopServesServiceType,
                isTrue,
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
              const id = 'id';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/stoppoint/$id/arrivals',
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
              final result = await api.stopPoint.arrivals(id);

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
        'arrivalDepartures',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const id = 'id';
              const lineIds = ['lineId'];

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/stoppoint/$id/arrivaldepartures',
                    {
                      'lineIds': lineIds,
                    },
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.ArrivalDeparture, Tfl.Api.Presentation.Entities",
    "platformName": "string",
    "destinationNaptanId": "string",
    "destinationName": "string",
    "naptanId": "string",
    "stationName": "string",
    "estimatedTimeOfArrival": "1970-01-01T00:00:00Z",
    "scheduledTimeOfArrival": "1970-01-01T00:00:00Z",
    "estimatedTimeOfDeparture": "1970-01-01T00:00:00Z",
    "scheduledTimeOfDeparture": "1970-01-01T00:00:00Z",
    "minutesAndSecondsToArrival": "string",
    "minutesAndSecondsToDeparture": "string",
    "departureStatus": "string"
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.stopPoint.arrivalDepartures(id, lineIds);

              // Assert
              expect(
                result[0].platformName,
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
                result[0].naptanId,
                equals('string'),
              );

              expect(
                result[0].stationName,
                equals('string'),
              );

              expect(
                result[0].estimatedTimeOfArrival,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].scheduledTimeOfArrival,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].estimatedTimeOfDeparture,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].scheduledTimeOfDeparture,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].minutesAndSecondsToArrival,
                equals('string'),
              );

              expect(
                result[0].minutesAndSecondsToDeparture,
                equals('string'),
              );

              expect(
                result[0].departureStatus,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'reachableFrom',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const id = 'id';
              const lineId = 'lineId';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/stoppoint/$id/canreachonline/$lineId',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.Identifier, Tfl.Api.Presentation.Entities",
    "id": "string",
    "name": "string",
    "uri": "string",
    "type": "string",
    "routeType": "string",
    "status": "string"
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.stopPoint.reachableFrom(id, lineId);

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
                result[0].uri,
                equals('string'),
              );

              expect(
                result[0].type,
                equals('string'),
              );

              expect(
                result[0].routeType,
                equals('string'),
              );

              expect(
                result[0].status,
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
              const id = 'id';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/stoppoint/$id/route',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.StopPointRouteSection, Tfl.Api.Presentation.Entities",
    "naptanId": "string",
    "lineId": "string",
    "mode": "string",
    "validFrom": "1970-01-01T00:00:00Z",
    "validTo": "1970-01-01T00:00:00Z",
    "direction": "string",
    "routeSectionName": "string",
    "lineString": "string",
    "isActive": true,
    "serviceType": "string",
    "destinationName": "string"
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.stopPoint.route(id);

              // Assert
              expect(
                result[0].naptanId,
                equals('string'),
              );

              expect(
                result[0].lineId,
                equals('string'),
              );

              expect(
                result[0].mode,
                equals('string'),
              );

              expect(
                result[0].validFrom,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].validTo,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].direction,
                equals('string'),
              );

              expect(
                result[0].routeSectionName,
                equals('string'),
              );

              expect(
                result[0].lineString,
                equals('string'),
              );

              expect(
                result[0].isActive,
                isTrue,
              );

              expect(
                result[0].serviceType,
                equals('string'),
              );

              expect(
                result[0].destinationName,
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
                    '/stoppoint/mode/${modes.join(',')}/disruption',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.DisruptedPoint, Tfl.Api.Presentation.Entities",
    "atcoCode": "string",
    "fromDate": "1970-01-01T00:00:00Z",
    "toDate": "1970-01-01T00:00:00Z",
    "description": "string",
    "commonName": "string",
    "type": "string",
    "mode": "string",
    "stationAtcoCode": "string",
    "appearance": "string"
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.stopPoint.disruptionByMode(modes);

              // Assert
              expect(
                result[0].atcoCode,
                equals('string'),
              );

              expect(
                result[0].fromDate,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].toDate,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].description,
                equals('string'),
              );

              expect(
                result[0].commonName,
                equals('string'),
              );

              expect(
                result[0].type,
                equals('string'),
              );

              expect(
                result[0].mode,
                equals('string'),
              );

              expect(
                result[0].stationAtcoCode,
                equals('string'),
              );

              expect(
                result[0].appearance,
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
                    '/stoppoint/${ids.join(',')}/disruption',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.DisruptedPoint, Tfl.Api.Presentation.Entities",
    "atcoCode": "string",
    "fromDate": "1970-01-01T00:00:00Z",
    "toDate": "1970-01-01T00:00:00Z",
    "description": "string",
    "commonName": "string",
    "type": "string",
    "mode": "string",
    "stationAtcoCode": "string",
    "appearance": "string"
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.stopPoint.disruption(ids);

              // Assert
              expect(
                result[0].atcoCode,
                equals('string'),
              );

              expect(
                result[0].fromDate,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].toDate,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].description,
                equals('string'),
              );

              expect(
                result[0].commonName,
                equals('string'),
              );

              expect(
                result[0].type,
                equals('string'),
              );

              expect(
                result[0].mode,
                equals('string'),
              );

              expect(
                result[0].stationAtcoCode,
                equals('string'),
              );

              expect(
                result[0].appearance,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'direction',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const id = 'id';
              const toStopPointId = 'toStopPointId';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/stoppoint/$id/directionto/$toStopPointId',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''"string"''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.stopPoint.direction(id, toStopPointId);

              // Assert
              expect(
                result,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'fare',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const id = 'id';
              const toStopPointId = 'toStopPointId';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/stoppoint/$id/fareto/$toStopPointId',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.Fares.FaresSection, Tfl.Api.Presentation.Entities",
    "header": "string",
    "index": 0,
    "journey": {
      "$type": "Tfl.Api.Presentation.Entities.Fares.Journey, Tfl.Api.Presentation.Entities",
      "fromStation": {
        "$type": "Tfl.Api.Presentation.Entities.Fares.FareStation, Tfl.Api.Presentation.Entities",
        "atcoCode": "string",
        "commonName": "string",
        "fareCategory": "string"
      },
      "toStation": {
        "$type": "Tfl.Api.Presentation.Entities.Fares.FareStation, Tfl.Api.Presentation.Entities",
        "atcoCode": "string",
        "commonName": "string",
        "fareCategory": "string"
      }
    },
    "rows": [
      {
        "$type": "Tfl.Api.Presentation.Entities.Fares.FareDetails, Tfl.Api.Presentation.Entities",
        "startDate": "1970-01-01T00:00:00Z",
        "endDate": "1970-01-01T00:00:00Z",
        "passengerType": "string",
        "contactlessPAYGOnlyFare": true,
        "from": "string",
        "to": "string",
        "fromStation": "string",
        "toStation": "string",
        "displayName": "string",
        "displayOrder": 0,
        "routeDescription": "string",
        "specialFare": true,
        "throughFare": true,
        "isTour": true,
        "ticketsAvailable": [
          {
            "$type": "Tfl.Api.Presentation.Entities.Fares.Ticket, Tfl.Api.Presentation.Entities",
            "passengerType": "string",
            "ticketType": {
              "$type": "Tfl.Api.Presentation.Entities.Fares.TicketType, Tfl.Api.Presentation.Entities",
              "type": "string",
              "description": "string"
            },
            "ticketTime": {
              "$type": "Tfl.Api.Presentation.Entities.Fares.TicketTime, Tfl.Api.Presentation.Entities",
              "type": "string",
              "description": "string"
            },
            "cost": "string",
            "description": "string",
            "mode": "string",
            "displayOrder": 0,
            "messages": []
          }
        ],
        "messages": []
      }
    ],
    "messages": [
      {
        "$type": "Tfl.Api.Presentation.Entities.Message, Tfl.Api.Presentation.Entities",
        "bulletOrder": 0,
        "messageText": "string"
      }
    ]
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.stopPoint.fare(id, toStopPointId);

              // Assert
              expect(
                result[0].header,
                equals('string'),
              );

              expect(
                result[0].index,
                equals(0),
              );

              expect(
                result[0].journey?.fromStation?.atcoCode,
                equals('string'),
              );

              expect(
                result[0].journey?.fromStation?.commonName,
                equals('string'),
              );

              expect(
                result[0].journey?.fromStation?.fareCategory,
                equals('string'),
              );

              expect(
                result[0].journey?.toStation?.atcoCode,
                equals('string'),
              );

              expect(
                result[0].journey?.toStation?.commonName,
                equals('string'),
              );

              expect(
                result[0].journey?.toStation?.fareCategory,
                equals('string'),
              );

              expect(
                result[0].rows?[0].startDate,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].rows?[0].endDate,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].rows?[0].passengerType,
                equals('string'),
              );

              expect(
                result[0].rows?[0].contactlessPaygOnlyFare,
                isTrue,
              );

              expect(
                result[0].rows?[0].from,
                equals('string'),
              );

              expect(
                result[0].rows?[0].to,
                equals('string'),
              );

              expect(
                result[0].rows?[0].fromStation,
                equals('string'),
              );

              expect(
                result[0].rows?[0].toStation,
                equals('string'),
              );

              expect(
                result[0].rows?[0].displayName,
                equals('string'),
              );

              expect(
                result[0].rows?[0].displayOrder,
                equals(0),
              );

              expect(
                result[0].rows?[0].routeDescription,
                equals('string'),
              );

              expect(
                result[0].rows?[0].specialFare,
                isTrue,
              );

              expect(
                result[0].rows?[0].throughFare,
                isTrue,
              );

              expect(
                result[0].rows?[0].isTour,
                isTrue,
              );

              expect(
                result[0].rows?[0].ticketsAvailable?[0].passengerType,
                equals('string'),
              );

              expect(
                result[0].rows?[0].ticketsAvailable?[0].ticketType?.type,
                equals('string'),
              );

              expect(
                result[0].rows?[0].ticketsAvailable?[0].ticketType?.description,
                equals('string'),
              );

              expect(
                result[0].rows?[0].ticketsAvailable?[0].ticketTime?.type,
                equals('string'),
              );

              expect(
                result[0].rows?[0].ticketsAvailable?[0].ticketTime?.description,
                equals('string'),
              );

              expect(
                result[0].rows?[0].ticketsAvailable?[0].cost,
                equals('string'),
              );

              expect(
                result[0].rows?[0].ticketsAvailable?[0].description,
                equals('string'),
              );

              expect(
                result[0].rows?[0].ticketsAvailable?[0].mode,
                equals('string'),
              );

              expect(
                result[0].rows?[0].ticketsAvailable?[0].displayOrder,
                equals(0),
              );

              expect(
                result[0].rows?[0].ticketsAvailable?[0].messages,
                isEmpty,
              );

              expect(
                result[0].rows?[0].messages,
                isEmpty,
              );

              expect(
                result[0].messages?[0].bulletOrder,
                equals(0),
              );

              expect(
                result[0].messages?[0].messageText,
                equals('string'),
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
              const stopTypes = ['stopType'];
              const lat = 0.0;
              const lon = 0.0;

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/stoppoint',
                    {
                      'stopTypes': stopTypes,
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
  "$type": "Tfl.Api.Presentation.Entities.StopPointsResponse, Tfl.Api.Presentation.Entities",
  "centrePoint": [0.0, 0.0],
  "stopPoints": [
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
      "children": [],
      "childrenUrls": [],
      "lat": 0.0,
      "lon": 0.0
    }
  ],
  "pageSize": 0,
  "total": 0,
  "page": 0
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result =
                  await api.stopPoint.getByGeoPoint(stopTypes, lat, lon);

              // Assert
              expect(
                result.centrePoint,
                equals([0.0, 0.0]),
              );

              expect(
                result.stopPoints?[0].naptanId,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].modes?[0],
                equals('string'),
              );

              expect(
                result.stopPoints?[0].icsCode,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].stopType,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].stationNaptan,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].hubNaptanCode,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lines?[0].id,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lines?[0].name,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lines?[0].uri,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lines?[0].type,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lines?[0].routeType,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lines?[0].status,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lineGroup?[0].stationAtcoCode,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lineGroup?[0].lineIdentifier?[0],
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lineModeGroups?[0].modeName,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lineModeGroups?[0].lineIdentifier?[0],
                equals('string'),
              );

              expect(
                result.stopPoints?[0].status,
                isTrue,
              );

              expect(
                result.stopPoints?[0].id,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].commonName,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].distance,
                equals(0.0),
              );

              expect(
                result.stopPoints?[0].placeType,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].additionalProperties?[0].category,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].additionalProperties?[0].key,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].additionalProperties?[0].sourceSystemKey,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].additionalProperties?[0].value,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].additionalProperties?[0].modified,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result.stopPoints?[0].children,
                isEmpty,
              );

              expect(
                result.stopPoints?[0].childrenUrls,
                isEmpty,
              );

              expect(
                result.stopPoints?[0].lat,
                equals(0.0),
              );

              expect(
                result.stopPoints?[0].lon,
                equals(0.0),
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
                result.page,
                equals(0),
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
                    '/stoppoint/mode/${modes.join(',')}',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.StopPointsResponse, Tfl.Api.Presentation.Entities",
  "stopPoints": [
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
          "value": "string",
          "modified": "1970-01-01T00:00:00Z"
        }
      ],
      "children": [],
      "childrenUrls": [],
      "lat": 0.0,
      "lon": 0.0
    }
  ],
  "pageSize": 0,
  "total": 0,
  "page": 0
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.stopPoint.getByMode(modes);

              // Assert
              expect(
                result.stopPoints?[0].naptanId,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].modes?[0],
                equals('string'),
              );

              expect(
                result.stopPoints?[0].icsCode,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].stopType,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].stationNaptan,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].hubNaptanCode,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lines?[0].id,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lines?[0].name,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lines?[0].uri,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lines?[0].type,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lines?[0].routeType,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lines?[0].status,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lineGroup?[0].stationAtcoCode,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lineGroup?[0].lineIdentifier?[0],
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lineModeGroups?[0].modeName,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].lineModeGroups?[0].lineIdentifier?[0],
                equals('string'),
              );

              expect(
                result.stopPoints?[0].status,
                isTrue,
              );

              expect(
                result.stopPoints?[0].id,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].commonName,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].placeType,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].additionalProperties?[0].category,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].additionalProperties?[0].key,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].additionalProperties?[0].sourceSystemKey,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].additionalProperties?[0].value,
                equals('string'),
              );

              expect(
                result.stopPoints?[0].additionalProperties?[0].modified,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result.stopPoints?[0].children,
                isEmpty,
              );

              expect(
                result.stopPoints?[0].childrenUrls,
                isEmpty,
              );

              expect(
                result.stopPoints?[0].lat,
                equals(0.0),
              );

              expect(
                result.stopPoints?[0].lon,
                equals(0.0),
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
                result.page,
                equals(0),
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
                    '/stoppoint/search',
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
  "total": 0,
  "matches": [
    {
      "$type": "Tfl.Api.Presentation.Entities.MatchedStop, Tfl.Api.Presentation.Entities",
      "icsId": "string",
      "modes": [
        "string"
      ],
      "zone": "string",
      "id": "string",
      "name": "string",
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
              final result = await api.stopPoint.search(query);

              // Assert
              expect(
                result.query,
                equals('string'),
              );

              expect(
                result.total,
                equals(0),
              );

              expect(
                result.matches?[0],
                isA<MatchedStop>(),
              );

              expect(
                (result.matches?[0] as MatchedStop).icsId,
                equals('string'),
              );

              expect(
                (result.matches?[0] as MatchedStop).modes?[0],
                equals('string'),
              );

              expect(
                (result.matches?[0] as MatchedStop).zone,
                equals('string'),
              );

              expect(
                (result.matches?[0] as MatchedStop).id,
                equals('string'),
              );

              expect(
                (result.matches?[0] as MatchedStop).name,
                equals('string'),
              );

              expect(
                (result.matches?[0] as MatchedStop).lat,
                equals(0.0),
              );

              expect(
                (result.matches?[0] as MatchedStop).lon,
                equals(0.0),
              );
            },
          );
        },
      );

      group(
        'getBySms',
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
                    '/stoppoint/sms/$id',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
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
              final result = await api.stopPoint.getBySms(id);

              // Assert
              expect(
                result.naptanId,
                equals('string'),
              );

              expect(
                result.modes?[0],
                equals('string'),
              );

              expect(
                result.icsCode,
                equals('string'),
              );

              expect(
                result.stopType,
                equals('string'),
              );

              expect(
                result.stationNaptan,
                equals('string'),
              );

              expect(
                result.hubNaptanCode,
                equals('string'),
              );

              expect(
                result.lines?[0].id,
                equals('string'),
              );

              expect(
                result.lines?[0].name,
                equals('string'),
              );

              expect(
                result.lines?[0].uri,
                equals('string'),
              );

              expect(
                result.lines?[0].type,
                equals('string'),
              );

              expect(
                result.lines?[0].routeType,
                equals('string'),
              );

              expect(
                result.lines?[0].status,
                equals('string'),
              );

              expect(
                result.lineGroup?[0].stationAtcoCode,
                equals('string'),
              );

              expect(
                result.lineGroup?[0].lineIdentifier?[0],
                equals('string'),
              );

              expect(
                result.lineModeGroups?[0].modeName,
                equals('string'),
              );

              expect(
                result.lineModeGroups?[0].lineIdentifier?[0],
                equals('string'),
              );

              expect(
                result.status,
                isTrue,
              );

              expect(
                result.id,
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
        'getTaxiRanksById',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const stopPointId = 'stopPointId';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/stoppoint/$stopPointId/taxiranks',
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
              final result = await api.stopPoint.getTaxiRanksById(stopPointId);

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
        'getCarParksById',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const stopPointId = 'stopPointId';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/stoppoint/$stopPointId/carparks',
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
              final result = await api.stopPoint.getCarParksById(stopPointId);

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
