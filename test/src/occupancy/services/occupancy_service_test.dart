import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

import 'occupancy_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late TflApiClient api;
  late http.Client client;

  group(
    'OccupancyService',
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
                    '/occupancy/carpark',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.CarParkOccupancy, Tfl.Api.Presentation.Entities",
    "id": "string",
    "bays": [
      {
        "$type": "Tfl.Api.Presentation.Entities.Bay, Tfl.Api.Presentation.Entities",
        "bayType": "string",
        "bayCount": 0,
        "free": 0,
        "occupied": 0
      }
    ],
    "name": "string",
    "carParkDetailsUrl": "string"
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.occupancy.getAll();

              // Assert
              expect(
                result[0].id,
                equals('string'),
              );

              expect(
                result[0].bays?[0].bayType,
                equals('string'),
              );

              expect(
                result[0].bays?[0].bayCount,
                equals(0),
              );

              expect(
                result[0].bays?[0].free,
                equals(0),
              );

              expect(
                result[0].bays?[0].occupied,
                equals(0),
              );

              expect(
                result[0].name,
                equals('string'),
              );

              expect(
                result[0].carParkDetailsUrl,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'getAllChargeConnectorStatus',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              when(
                client.get(
                  Uri.https(
                    authority,
                    '/occupancy/chargeconnector',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.ChargeConnectorOccupancy, Tfl.Api.Presentation.Entities",
    "id": 0,
    "sourceSystemPlaceId": "string",
    "status": "string"
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.occupancy.getAllChargeConnectorStatus();

              // Assert
              expect(
                result[0].id,
                equals(0),
              );

              expect(
                result[0].sourceSystemPlaceId,
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
                    '/occupancy/carpark/$id',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.CarParkOccupancy, Tfl.Api.Presentation.Entities",
  "id": "string",
  "bays": [
    {
      "$type": "Tfl.Api.Presentation.Entities.Bay, Tfl.Api.Presentation.Entities",
      "bayType": "string",
      "bayCount": 0,
      "free": 0,
      "occupied": 0
    }
  ],
  "name": "string",
  "carParkDetailsUrl": "string"
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.occupancy.get(id);

              // Assert
              expect(
                result.id,
                equals('string'),
              );

              expect(
                result.bays?[0].bayType,
                equals('string'),
              );

              expect(
                result.bays?[0].bayCount,
                equals(0),
              );

              expect(
                result.bays?[0].free,
                equals(0),
              );

              expect(
                result.bays?[0].occupied,
                equals(0),
              );

              expect(
                result.name,
                equals('string'),
              );

              expect(
                result.carParkDetailsUrl,
                equals('string'),
              );
            },
          );
        },
      );

      group(
        'getChargeConnectorStatus',
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
                    '/occupancy/chargeconnector/${ids.join(',')}',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.ChargeConnectorOccupancy, Tfl.Api.Presentation.Entities",
    "id": 0,
    "sourceSystemPlaceId": "string",
    "status": "string"
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.occupancy.getChargeConnectorStatus(ids);

              // Assert
              expect(
                result[0].id,
                equals(0),
              );

              expect(
                result[0].sourceSystemPlaceId,
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
        'getBikePointsOccupancies',
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
                    '/occupancy/bikepoints/${ids.join(',')}',
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''[
  {
    "$type": "Tfl.Api.Presentation.Entities.BikePointOccupancy, Tfl.Api.Presentation.Entities",
    "id": "string",
    "name": "string",
    "bikesCount": 0,
    "emptyDocks": 0,
    "totalDocks": 0,
    "standardBikesCount": 0,
    "eBikesCount": 0
  }
]''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.occupancy.getBikePointsOccupancies(ids);

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
                result[0].bikesCount,
                equals(0),
              );

              expect(
                result[0].emptyDocks,
                equals(0),
              );

              expect(
                result[0].totalDocks,
                equals(0),
              );

              expect(
                result[0].standardBikesCount,
                equals(0),
              );

              expect(
                result[0].eBikesCount,
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
