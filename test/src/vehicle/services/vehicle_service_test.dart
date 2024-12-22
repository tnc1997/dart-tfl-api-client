import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

import 'vehicle_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late TflApiClient api;
  late http.Client client;

  group(
    'VehicleService',
    () {
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
                    '/vehicle/${ids.join(',')}/arrivals',
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
              final result = await api.vehicle.arrivals(ids);

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
        'getEmissionsSurchargeCompliance',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const vrm = 'vrm';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/vehicle/emissionsurcharge',
                    {
                      'vrm': vrm,
                    },
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.VehicleMatch, Tfl.Api.Presentation.Entities",
  "vrm": "string",
  "type": "string",
  "make": "string",
  "model": "string",
  "colour": "string",
  "compliance": "string"
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result =
                  await api.vehicle.getEmissionsSurchargeCompliance(vrm);

              // Assert
              expect(
                result.vrm,
                equals('string'),
              );

              expect(
                result.type,
                equals('string'),
              );

              expect(
                result.make,
                equals('string'),
              );

              expect(
                result.model,
                equals('string'),
              );

              expect(
                result.colour,
                equals('string'),
              );

              expect(
                result.compliance,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'getUlezCompliance',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const vrm = 'vrm';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/vehicle/ulezcompliance',
                    {
                      'vrm': vrm,
                    },
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.VehicleMatch, Tfl.Api.Presentation.Entities",
  "vrm": "string",
  "type": "string",
  "make": "string",
  "model": "string",
  "colour": "string",
  "compliance": "string"
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.vehicle.getUlezCompliance(vrm);

              // Assert
              expect(
                result.vrm,
                equals('string'),
              );

              expect(
                result.type,
                equals('string'),
              );

              expect(
                result.make,
                equals('string'),
              );

              expect(
                result.model,
                equals('string'),
              );

              expect(
                result.colour,
                equals('string'),
              );

              expect(
                result.compliance,
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
