import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

import 'mode_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late TflApiClient api;
  late http.Client client;

  group(
    'ModeService',
    () {
      group(
        'getActiveServiceTypes',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              when(
                client.get(
                  Uri.https(
                    authority,
                    '/mode/activeservicetypes',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.ActiveServiceType, Tfl.Api.Presentation.Entities",
    "mode": "string",
    "serviceType": "string"
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.mode.getActiveServiceTypes();

              // Assert
              expect(
                result[0].mode,
                equals('string'),
              );

              expect(
                result[0].serviceType,
                equals('string'),
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
              const mode = 'mode';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/mode/$mode/arrivals',
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
              final result = await api.mode.arrivals(mode);

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
