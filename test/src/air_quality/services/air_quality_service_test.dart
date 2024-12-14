import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

import 'air_quality_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late TflApiClient api;
  late http.Client client;

  group(
    'AirQualityService',
    () {
      group(
        'get',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              when(
                client.get(
                  Uri.https(
                    authority,
                    '/airquality',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      '''{
  "updatePeriod": "string",
  "updateFrequency": "string",
  "forecastURL": "string",
  "disclaimerText": "string",
  "currentForecast": [
    {
      "forecastType": "string",
      "forecastID": "string",
      "forecastBand": "string",
      "forecastSummary": "string",
      "nO2Band": "string",
      "o3Band": "string",
      "pM10Band": "string",
      "pM25Band": "string",
      "sO2Band": "string",
      "forecastText": "string"
    }
  ]
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.airQuality.get();

              // Assert
              expect(
                result.updatePeriod,
                equals('string'),
              );

              expect(
                result.updateFrequency,
                equals('string'),
              );

              expect(
                result.forecastURL,
                equals('string'),
              );

              expect(
                result.disclaimerText,
                equals('string'),
              );

              expect(
                result.currentForecast?[0].forecastType,
                equals('string'),
              );

              expect(
                result.currentForecast?[0].forecastID,
                equals('string'),
              );

              expect(
                result.currentForecast?[0].forecastBand,
                equals('string'),
              );

              expect(
                result.currentForecast?[0].forecastSummary,
                equals('string'),
              );

              expect(
                result.currentForecast?[0].nO2Band,
                equals('string'),
              );

              expect(
                result.currentForecast?[0].o3Band,
                equals('string'),
              );

              expect(
                result.currentForecast?[0].pM10Band,
                equals('string'),
              );

              expect(
                result.currentForecast?[0].pM25Band,
                equals('string'),
              );

              expect(
                result.currentForecast?[0].sO2Band,
                equals('string'),
              );

              expect(
                result.currentForecast?[0].forecastText,
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
