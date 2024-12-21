import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

import 'cycle_superhighway_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late TflApiClient api;
  late http.Client client;

  group(
    'CycleSuperhighwayService',
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
                    '/cyclesuperhighway',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$id": "1",
    "$type": "Tfl.Api.Presentation.Entities.CycleSuperhighway, Tfl.Api.Presentation.Entities",
    "id": "string",
    "label": "string",
    "labelShort": "string",
    "geography": {
      "type": "string",
      "coordinates": [
        [0.0, 0.0]
      ],
      "crs": {
        "type": "string",
        "properties": {
          "name": "string"
        }
      }
    },
    "segmented": true,
    "modified": "1970-01-01T00:00:00Z",
    "status": "string",
    "routeType": "string"
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.cycleSuperhighway.getAll();

              // Assert
              expect(
                result[0].id,
                equals('string'),
              );

              expect(
                result[0].label,
                equals('string'),
              );

              expect(
                result[0].labelShort,
                equals('string'),
              );

              expect(
                result[0].geography?.type,
                equals('string'),
              );

              expect(
                result[0].geography?.coordinates?[0],
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
                result[0].segmented,
                isTrue,
              );

              expect(
                result[0].modified,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].status,
                equals('string'),
              );

              expect(
                result[0].routeType,
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
              const id = 'id';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/cyclesuperhighway/$id',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$id": "1",
  "$type": "Tfl.Api.Presentation.Entities.CycleSuperhighway, Tfl.Api.Presentation.Entities",
  "id": "string",
  "label": "string",
  "labelShort": "string",
  "geography": {
    "type": "string",
    "coordinates": [
      [0.0, 0.0]
    ],
    "crs": {
      "type": "string",
      "properties": {
        "name": "string"
      }
    }
  },
  "segmented": true,
  "modified": "1970-01-01T00:00:00Z",
  "status": "string",
  "routeType": "string"
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.cycleSuperhighway.get(id);

              // Assert
              expect(
                result.id,
                equals('string'),
              );

              expect(
                result.label,
                equals('string'),
              );

              expect(
                result.labelShort,
                equals('string'),
              );

              expect(
                result.geography?.type,
                equals('string'),
              );

              expect(
                result.geography?.coordinates?[0],
                equals([0.0, 0.0]),
              );

              expect(
                result.geography?.crs?.type,
                equals('string'),
              );

              expect(
                result.geography?.crs?.properties?.name,
                equals('string'),
              );

              expect(
                result.segmented,
                isTrue,
              );

              expect(
                result.modified,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result.status,
                equals('string'),
              );

              expect(
                result.routeType,
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
