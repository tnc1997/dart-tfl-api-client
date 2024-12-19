import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

import 'accident_stats_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late TflApiClient api;
  late http.Client client;

  group(
    'AccidentStatsService',
    () {
      group(
        'get',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const year = 1970;

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/accidentstats/$year',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.AccidentStats.AccidentDetail, Tfl.Api.Presentation.Entities",
    "id": 0,
    "lat": 0.0,
    "lon": 0.0,
    "location": "string",
    "date": "1970-01-01T00:00:00Z",
    "severity": "string",
    "borough": "string",
    "casualties": [
      {
        "$type": "Tfl.Api.Presentation.Entities.AccidentStats.Casualty, Tfl.Api.Presentation.Entities",
        "age": 0,
        "class": "string",
        "severity": "string",
        "mode": "string",
        "ageBand": "string"
      }
    ],
    "vehicles": [
      {
        "$type": "Tfl.Api.Presentation.Entities.AccidentStats.Vehicle, Tfl.Api.Presentation.Entities",
        "type": "string"
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
              final result = await api.accidentStats.get(year);

              // Assert
              expect(
                result[0].id,
                equals(0),
              );

              expect(
                result[0].lat,
                equals(0.0),
              );

              expect(
                result[0].lon,
                equals(0.0),
              );

              expect(
                result[0].location,
                equals('string'),
              );

              expect(
                result[0].date,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result[0].severity,
                equals('string'),
              );

              expect(
                result[0].borough,
                equals('string'),
              );

              expect(
                result[0].casualties?[0].age,
                equals(0),
              );

              expect(
                result[0].casualties?[0].class_,
                equals('string'),
              );

              expect(
                result[0].casualties?[0].severity,
                equals('string'),
              );

              expect(
                result[0].casualties?[0].mode,
                equals('string'),
              );

              expect(
                result[0].casualties?[0].ageBand,
                equals('string'),
              );

              expect(
                result[0].vehicles?[0].type,
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
