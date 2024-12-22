import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

import 'network_status_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late TflApiClient api;
  late http.Client client;

  group(
    'NetworkStatusService',
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
                    '/networkstatus',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.NetworkStatus, Tfl.Api.Presentation.Entities",
  "operator": "string",
  "status": "string",
  "message": "string",
  "statusLevel": 0
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.networkStatus.get();

              // Assert
              expect(
                result.operator,
                equals('string'),
              );

              expect(
                result.status,
                equals('string'),
              );

              expect(
                result.message,
                equals('string'),
              );

              expect(
                result.statusLevel,
                equals(0),
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
