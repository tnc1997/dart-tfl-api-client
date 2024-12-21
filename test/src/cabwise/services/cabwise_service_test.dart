import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

import 'cabwise_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late TflApiClient api;
  late http.Client client;

  group(
    'CabwiseService',
    () {
      group(
        'search',
        () {
          test(
            'should return the result',
            () async {
              // Arrange
              const lat = 0.0;
              const lon = 0.0;

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/cabwise/search',
                    {
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
  "Operators": {
    "OperatorList": [
      {
        "OperatorId": 0,
        "OrganisationName": "string",
        "TradingName": "string",
        "AlsoKnownAs": [],
        "CentreId": 0,
        "AddressLine1": "string",
        "AddressLine2": "string",
        "AddressLine3": "string",
        "Town": "string",
        "County": "string",
        "Postcode": "string",
        "BookingsPhoneNumber": "string",
        "BookingsEmail": "string",
        "PublicAccess": true,
        "PublicWaitingRoom": true,
        "WheelchairAccessible": true,
        "CreditDebitCard": true,
        "ChequeBankersCard": true,
        "AccountServicesAvailable": true,
        "HoursOfOperation24X7": true,
        "HoursOfOperationMonThu": true,
        "StartTimeMonThu": "string",
        "EndTimeMonThu": "string",
        "HoursOfOperationFri": true,
        "StartTimeFri": "string",
        "EndTimeFri": "string",
        "HoursOfOperationSat": true,
        "StartTimeSat": "string",
        "EndTimeSat": "string",
        "HoursOfOperationSun": true,
        "StartTimeSun": "string",
        "EndTimeSun": "string",
        "HoursOfOperationPubHol": true,
        "StartTimePubHol": "string",
        "EndTimePubHol": "string",
        "NumberOfVehicles": 0,
        "NumberOfVehiclesWheelchair": 0,
        "Longitude": 0.0,
        "Latitude": 0.0,
        "OperatorTypes": [],
        "Distance": 0.0
      }
    ]
  },
  "Header": {
    "Identifier": "string",
    "DisplayTitle": "string",
    "Version": "string",
    "PublishDateTime": "1970-01-01T00:00:00Z",
    "Author": "string",
    "Owner": "string",
    "RefreshRate": 0,
    "Max_Latency": 0,
    "TimeToError": 0,
    "Schedule": "string",
    "Logo": "string",
    "Language": "string",
    "Attribution": {
      "Link": "string",
      "Text": "string",
      "Logo": "string"
    }
  }
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.cabwise.search(lat, lon);

              // Assert
              expect(
                result.operators?.operatorList?[0].operatorId,
                equals(0),
              );

              expect(
                result.operators?.operatorList?[0].organisationName,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].tradingName,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].alsoKnownAs,
                isEmpty,
              );

              expect(
                result.operators?.operatorList?[0].centreId,
                equals(0),
              );

              expect(
                result.operators?.operatorList?[0].addressLine1,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].addressLine2,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].addressLine3,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].town,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].county,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].postcode,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].bookingsPhoneNumber,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].bookingsEmail,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].publicAccess,
                isTrue,
              );

              expect(
                result.operators?.operatorList?[0].publicWaitingRoom,
                isTrue,
              );

              expect(
                result.operators?.operatorList?[0].wheelchairAccessible,
                isTrue,
              );

              expect(
                result.operators?.operatorList?[0].creditDebitCard,
                isTrue,
              );

              expect(
                result.operators?.operatorList?[0].chequeBankersCard,
                isTrue,
              );

              expect(
                result.operators?.operatorList?[0].accountServicesAvailable,
                isTrue,
              );

              expect(
                result.operators?.operatorList?[0].hoursOfOperation24X7,
                isTrue,
              );

              expect(
                result.operators?.operatorList?[0].hoursOfOperationMonThu,
                isTrue,
              );

              expect(
                result.operators?.operatorList?[0].startTimeMonThu,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].endTimeMonThu,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].hoursOfOperationFri,
                isTrue,
              );

              expect(
                result.operators?.operatorList?[0].startTimeFri,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].endTimeFri,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].hoursOfOperationSat,
                isTrue,
              );

              expect(
                result.operators?.operatorList?[0].startTimeSat,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].endTimeSat,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].hoursOfOperationSun,
                isTrue,
              );

              expect(
                result.operators?.operatorList?[0].startTimeSun,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].endTimeSun,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].hoursOfOperationPubHol,
                isTrue,
              );

              expect(
                result.operators?.operatorList?[0].startTimePubHol,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].endTimePubHol,
                equals('string'),
              );

              expect(
                result.operators?.operatorList?[0].numberOfVehicles,
                equals(0),
              );

              expect(
                result.operators?.operatorList?[0].numberOfVehiclesWheelchair,
                equals(0),
              );

              expect(
                result.operators?.operatorList?[0].longitude,
                equals(0.0),
              );

              expect(
                result.operators?.operatorList?[0].latitude,
                equals(0.0),
              );

              expect(
                result.operators?.operatorList?[0].operatorTypes,
                isEmpty,
              );

              expect(
                result.operators?.operatorList?[0].distance,
                equals(0.0),
              );

              expect(
                result.header?.identifier,
                equals('string'),
              );

              expect(
                result.header?.displayTitle,
                equals('string'),
              );

              expect(
                result.header?.version,
                equals('string'),
              );

              expect(
                result.header?.publishDateTime,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result.header?.author,
                equals('string'),
              );

              expect(
                result.header?.owner,
                equals('string'),
              );

              expect(
                result.header?.refreshRate,
                equals(0),
              );

              expect(
                result.header?.maxLatency,
                equals(0),
              );

              expect(
                result.header?.timeToError,
                equals(0),
              );

              expect(
                result.header?.schedule,
                equals('string'),
              );

              expect(
                result.header?.logo,
                equals('string'),
              );

              expect(
                result.header?.language,
                equals('string'),
              );

              expect(
                result.header?.attribution?.link,
                equals('string'),
              );

              expect(
                result.header?.attribution?.text,
                equals('string'),
              );

              expect(
                result.header?.attribution?.logo,
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
