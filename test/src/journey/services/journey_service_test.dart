import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

import 'journey_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late TflApiClient api;
  late http.Client client;

  group(
    'JourneyService',
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
                    '/journey/meta/modes',
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
              final result = await api.journey.metaModes();

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
        'journeyResults',
        () {
          test(
            'should return the result as a journey planner disambiguation result',
            () async {
              // Arrange
              const from = 'from';
              const to = 'to';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/journey/journeyresults/$from/to/$to',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.DisambiguationResult, Tfl.Api.Presentation.Entities",
  "toLocationDisambiguation": {
    "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.Disambiguation, Tfl.Api.Presentation.Entities",
    "disambiguationOptions": [
      {
        "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.DisambiguationOption, Tfl.Api.Presentation.Entities",
        "parameterValue": "string",
        "uri": "string",
        "place": {
          "$type": "Tfl.Api.Presentation.Entities.Place, Tfl.Api.Presentation.Entities",
          "url": "string",
          "commonName": "string",
          "placeType": "string",
          "additionalProperties": [],
          "lat": 0.0,
          "lon": 0.0
        },
        "matchQuality": 0
      }
    ],
    "matchStatus": "string"
  },
  "fromLocationDisambiguation": {
    "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.Disambiguation, Tfl.Api.Presentation.Entities",
    "disambiguationOptions": [
      {
        "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.DisambiguationOption, Tfl.Api.Presentation.Entities",
        "parameterValue": "string",
        "uri": "string",
        "place": {
          "$type": "Tfl.Api.Presentation.Entities.Place, Tfl.Api.Presentation.Entities",
          "url": "string",
          "commonName": "string",
          "placeType": "string",
          "additionalProperties": [],
          "lat": 0.0,
          "lon": 0.0
        },
        "matchQuality": 0
      }
    ],
    "matchStatus": "string"
  },
  "viaLocationDisambiguation": {
    "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.Disambiguation, Tfl.Api.Presentation.Entities",
    "matchStatus": "string"
  },
  "recommendedMaxAgeMinutes": 0,
  "searchCriteria": {
    "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.SearchCriteria, Tfl.Api.Presentation.Entities",
    "dateTime": "1970-01-01T00:00:00Z",
    "dateTimeType": "string"
  },
  "journeyVector": {
    "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.JourneyVector, Tfl.Api.Presentation.Entities",
    "from": "string",
    "to": "string",
    "via": "string",
    "uri": "string"
  }
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.journey.journeyResults(from, to);

              // Assert
              expect(
                result,
                isA<JourneyPlannerDisambiguationResult>(),
              );

              expect(
                (result as JourneyPlannerDisambiguationResult)
                    .toLocationDisambiguation
                    ?.disambiguationOptions?[0]
                    .parameterValue,
                equals('string'),
              );

              expect(
                result.toLocationDisambiguation?.disambiguationOptions?[0].uri,
                equals('string'),
              );

              expect(
                result.toLocationDisambiguation?.disambiguationOptions?[0].place
                    ?.url,
                equals('string'),
              );

              expect(
                result.toLocationDisambiguation?.disambiguationOptions?[0].place
                    ?.commonName,
                equals('string'),
              );

              expect(
                result.toLocationDisambiguation?.disambiguationOptions?[0].place
                    ?.placeType,
                equals('string'),
              );

              expect(
                result.toLocationDisambiguation?.disambiguationOptions?[0].place
                    ?.additionalProperties,
                isEmpty,
              );

              expect(
                result.toLocationDisambiguation?.disambiguationOptions?[0].place
                    ?.lat,
                equals(0.0),
              );

              expect(
                result.toLocationDisambiguation?.disambiguationOptions?[0].place
                    ?.lon,
                equals(0.0),
              );

              expect(
                result.toLocationDisambiguation?.disambiguationOptions?[0]
                    .matchQuality,
                equals(0),
              );

              expect(
                result.toLocationDisambiguation?.matchStatus,
                equals('string'),
              );

              expect(
                result.fromLocationDisambiguation?.disambiguationOptions?[0]
                    .parameterValue,
                equals('string'),
              );

              expect(
                result
                    .fromLocationDisambiguation?.disambiguationOptions?[0].uri,
                equals('string'),
              );

              expect(
                result.fromLocationDisambiguation?.disambiguationOptions?[0]
                    .place?.url,
                equals('string'),
              );

              expect(
                result.fromLocationDisambiguation?.disambiguationOptions?[0]
                    .place?.commonName,
                equals('string'),
              );

              expect(
                result.fromLocationDisambiguation?.disambiguationOptions?[0]
                    .place?.placeType,
                equals('string'),
              );

              expect(
                result.fromLocationDisambiguation?.disambiguationOptions?[0]
                    .place?.additionalProperties,
                isEmpty,
              );

              expect(
                result.fromLocationDisambiguation?.disambiguationOptions?[0]
                    .place?.lat,
                equals(0.0),
              );

              expect(
                result.fromLocationDisambiguation?.disambiguationOptions?[0]
                    .place?.lon,
                equals(0.0),
              );

              expect(
                result.fromLocationDisambiguation?.disambiguationOptions?[0]
                    .matchQuality,
                equals(0),
              );

              expect(
                result.fromLocationDisambiguation?.matchStatus,
                equals('string'),
              );

              expect(
                result.viaLocationDisambiguation?.matchStatus,
                equals('string'),
              );

              expect(
                result.recommendedMaxAgeMinutes,
                equals(0),
              );

              expect(
                result.searchCriteria?.dateTime,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result.searchCriteria?.dateTimeType,
                equals('string'),
              );

              expect(
                result.journeyVector?.from,
                equals('string'),
              );

              expect(
                result.journeyVector?.to,
                equals('string'),
              );

              expect(
                result.journeyVector?.via,
                equals('string'),
              );

              expect(
                result.journeyVector?.uri,
                equals('string'),
              );
            },
          );

          test(
            'should return the result as a journey planner itinerary result',
            () async {
              // Arrange
              const from = 'from';
              const to = 'to';

              when(
                client.get(
                  Uri.https(
                    authority,
                    '/journey/journeyresults/$from/to/$to',
                    {},
                  ),
                ),
              ).thenAnswer(
                (_) {
                  return Future.value(
                    http.Response(
                      r'''{
  "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.ItineraryResult, Tfl.Api.Presentation.Entities",
  "journeys": [
    {
      "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.Journey, Tfl.Api.Presentation.Entities",
      "startDateTime": "1970-01-01T00:00:00Z",
      "duration": 0,
      "arrivalDateTime": "1970-01-01T00:00:00Z",
      "alternativeRoute": true,
      "legs": [
        {
          "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.Leg, Tfl.Api.Presentation.Entities",
          "duration": 0,
          "instruction": {
            "$type": "Tfl.Api.Presentation.Entities.Instruction, Tfl.Api.Presentation.Entities",
            "summary": "string",
            "detailed": "string",
            "steps": []
          },
          "obstacles": [],
          "departureTime": "1970-01-01T00:00:00Z",
          "arrivalTime": "1970-01-01T00:00:00Z",
          "departurePoint": {
            "$type": "Tfl.Api.Presentation.Entities.StopPoint, Tfl.Api.Presentation.Entities",
            "naptanId": "string",
            "platformName": "string",
            "icsCode": "string",
            "individualStopId": "string",
            "commonName": "string",
            "placeType": "string",
            "additionalProperties": [],
            "lat": 0.0,
            "lon": 0.0
          },
          "arrivalPoint": {
            "$type": "Tfl.Api.Presentation.Entities.StopPoint, Tfl.Api.Presentation.Entities",
            "naptanId": "string",
            "platformName": "string",
            "icsCode": "string",
            "individualStopId": "string",
            "commonName": "string",
            "placeType": "string",
            "additionalProperties": [],
            "lat": 0.0,
            "lon": 0.0
          },
          "path": {
            "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.Path, Tfl.Api.Presentation.Entities",
            "lineString": "string",
            "stopPoints": [
              {
                "$type": "Tfl.Api.Presentation.Entities.Identifier, Tfl.Api.Presentation.Entities",
                "id": "string",
                "name": "string",
                "uri": "string",
                "type": "string",
                "routeType": "string",
                "status": "string"
              }
            ],
            "elevation": []
          },
          "routeOptions": [
            {
              "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.RouteOption, Tfl.Api.Presentation.Entities",
              "name": "string",
              "directions": [],
              "lineIdentifier": {
                "$type": "Tfl.Api.Presentation.Entities.Identifier, Tfl.Api.Presentation.Entities",
                "id": "string",
                "name": "string",
                "uri": "string",
                "type": "string",
                "routeType": "string",
                "status": "string"
              },
              "direction": "string"
            }
          ],
          "mode": {
            "$type": "Tfl.Api.Presentation.Entities.Identifier, Tfl.Api.Presentation.Entities",
            "id": "string",
            "name": "string",
            "type": "string",
            "routeType": "string",
            "status": "string",
            "motType": "string",
            "network": "string"
          },
          "disruptions": [],
          "plannedWorks": [],
          "isDisrupted": true,
          "hasFixedLocations": true,
          "scheduledDepartureTime": "1970-01-01T00:00:00Z",
          "scheduledArrivalTime": "1970-01-01T00:00:00Z"
        }
      ]
    }
  ],
  "lines": [
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
          "validityPeriods": []
        }
      ],
      "routeSections": [],
      "serviceTypes": [
        {
          "$type": "Tfl.Api.Presentation.Entities.LineServiceTypeInfo, Tfl.Api.Presentation.Entities",
          "name": "string",
          "uri": "string"
        }
      ]
    }
  ],
  "stopMessages": [],
  "recommendedMaxAgeMinutes": 0,
  "searchCriteria": {
    "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.SearchCriteria, Tfl.Api.Presentation.Entities",
    "dateTime": "1970-01-01T00:00:00Z",
    "dateTimeType": "string",
    "timeAdjustments": {
      "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.TimeAdjustments, Tfl.Api.Presentation.Entities",
      "earliest": {
        "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.TimeAdjustment, Tfl.Api.Presentation.Entities",
        "date": "string",
        "time": "string",
        "timeIs": "string",
        "uri": "string"
      },
      "earlier": {
        "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.TimeAdjustment, Tfl.Api.Presentation.Entities",
        "date": "string",
        "time": "string",
        "timeIs": "string",
        "uri": "string"
      },
      "later": {
        "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.TimeAdjustment, Tfl.Api.Presentation.Entities",
        "date": "string",
        "time": "string",
        "timeIs": "string",
        "uri": "string"
      },
      "latest": {
        "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.TimeAdjustment, Tfl.Api.Presentation.Entities",
        "date": "string",
        "time": "string",
        "timeIs": "string",
        "uri": "string"
      }
    }
  },
  "journeyVector": {
    "$type": "Tfl.Api.Presentation.Entities.JourneyPlanner.JourneyVector, Tfl.Api.Presentation.Entities",
    "from": "string",
    "to": "string",
    "via": "string",
    "uri": "string"
  }
}''',
                      200,
                    ),
                  );
                },
              );

              // Act
              final result = await api.journey.journeyResults(from, to);

              // Assert
              expect(
                result,
                isA<JourneyPlannerItineraryResult>(),
              );

              expect(
                (result as JourneyPlannerItineraryResult)
                    .journeys?[0]
                    .startDateTime,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result.journeys?[0].duration,
                equals(0),
              );

              expect(
                result.journeys?[0].arrivalDateTime,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result.journeys?[0].alternativeRoute,
                isTrue,
              );

              expect(
                result.journeys?[0].legs?[0].duration,
                equals(0),
              );

              expect(
                result.journeys?[0].legs?[0].instruction?.summary,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].instruction?.detailed,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].instruction?.steps,
                isEmpty,
              );

              expect(
                result.journeys?[0].legs?[0].obstacles,
                isEmpty,
              );

              expect(
                result.journeys?[0].legs?[0].departureTime,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result.journeys?[0].legs?[0].arrivalTime,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result.journeys?[0].legs?[0].departurePoint,
                isA<StopPoint>(),
              );

              expect(
                (result.journeys?[0].legs?[0].departurePoint as StopPoint)
                    .naptanId,
                equals('string'),
              );

              expect(
                (result.journeys?[0].legs?[0].departurePoint as StopPoint)
                    .platformName,
                equals('string'),
              );

              expect(
                (result.journeys?[0].legs?[0].departurePoint as StopPoint)
                    .icsCode,
                equals('string'),
              );

              expect(
                (result.journeys?[0].legs?[0].departurePoint as StopPoint)
                    .individualStopId,
                equals('string'),
              );

              expect(
                (result.journeys?[0].legs?[0].departurePoint as StopPoint)
                    .commonName,
                equals('string'),
              );

              expect(
                (result.journeys?[0].legs?[0].departurePoint as StopPoint)
                    .placeType,
                equals('string'),
              );

              expect(
                (result.journeys?[0].legs?[0].departurePoint as StopPoint)
                    .additionalProperties,
                isEmpty,
              );

              expect(
                (result.journeys?[0].legs?[0].departurePoint as StopPoint).lat,
                equals(0.0),
              );

              expect(
                (result.journeys?[0].legs?[0].departurePoint as StopPoint).lon,
                equals(0.0),
              );

              expect(
                result.journeys?[0].legs?[0].arrivalPoint,
                isA<StopPoint>(),
              );

              expect(
                (result.journeys?[0].legs?[0].arrivalPoint as StopPoint)
                    .naptanId,
                equals('string'),
              );

              expect(
                (result.journeys?[0].legs?[0].arrivalPoint as StopPoint)
                    .platformName,
                equals('string'),
              );

              expect(
                (result.journeys?[0].legs?[0].arrivalPoint as StopPoint)
                    .icsCode,
                equals('string'),
              );

              expect(
                (result.journeys?[0].legs?[0].arrivalPoint as StopPoint)
                    .individualStopId,
                equals('string'),
              );

              expect(
                (result.journeys?[0].legs?[0].arrivalPoint as StopPoint)
                    .commonName,
                equals('string'),
              );

              expect(
                (result.journeys?[0].legs?[0].arrivalPoint as StopPoint)
                    .placeType,
                equals('string'),
              );

              expect(
                (result.journeys?[0].legs?[0].arrivalPoint as StopPoint)
                    .additionalProperties,
                isEmpty,
              );

              expect(
                (result.journeys?[0].legs?[0].arrivalPoint as StopPoint).lat,
                equals(0.0),
              );

              expect(
                (result.journeys?[0].legs?[0].arrivalPoint as StopPoint).lon,
                equals(0.0),
              );

              expect(
                result.journeys?[0].legs?[0].path?.lineString,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].path?.stopPoints?[0].id,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].path?.stopPoints?[0].name,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].path?.stopPoints?[0].uri,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].path?.stopPoints?[0].type,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].path?.stopPoints?[0].routeType,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].path?.stopPoints?[0].status,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].path?.elevation,
                isEmpty,
              );

              expect(
                result.journeys?[0].legs?[0].routeOptions?[0].name,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].routeOptions?[0].directions,
                isEmpty,
              );

              expect(
                result
                    .journeys?[0].legs?[0].routeOptions?[0].lineIdentifier?.id,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].routeOptions?[0].lineIdentifier
                    ?.name,
                equals('string'),
              );

              expect(
                result
                    .journeys?[0].legs?[0].routeOptions?[0].lineIdentifier?.uri,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].routeOptions?[0].lineIdentifier
                    ?.type,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].routeOptions?[0].lineIdentifier
                    ?.routeType,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].routeOptions?[0].lineIdentifier
                    ?.status,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].routeOptions?[0].direction,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].mode?.id,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].mode?.name,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].mode?.type,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].mode?.routeType,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].mode?.status,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].mode?.motType,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].mode?.network,
                equals('string'),
              );

              expect(
                result.journeys?[0].legs?[0].disruptions,
                isEmpty,
              );

              expect(
                result.journeys?[0].legs?[0].plannedWorks,
                isEmpty,
              );

              expect(
                result.journeys?[0].legs?[0].isDisrupted,
                isTrue,
              );

              expect(
                result.journeys?[0].legs?[0].hasFixedLocations,
                isTrue,
              );

              expect(
                result.journeys?[0].legs?[0].scheduledDepartureTime,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result.journeys?[0].legs?[0].scheduledArrivalTime,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
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
                result.lines?[0].modeName,
                equals('string'),
              );

              expect(
                result.lines?[0].disruptions,
                isEmpty,
              );

              expect(
                result.lines?[0].created,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result.lines?[0].modified,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result.lines?[0].lineStatuses?[0].id,
                equals(0),
              );

              expect(
                result.lines?[0].lineStatuses?[0].statusSeverity,
                equals(0),
              );

              expect(
                result.lines?[0].lineStatuses?[0].statusSeverityDescription,
                equals('string'),
              );

              expect(
                result.lines?[0].lineStatuses?[0].created,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result.lines?[0].lineStatuses?[0].validityPeriods,
                isEmpty,
              );

              expect(
                result.lines?[0].routeSections,
                isEmpty,
              );

              expect(
                result.lines?[0].serviceTypes?[0].name,
                equals('string'),
              );

              expect(
                result.lines?[0].serviceTypes?[0].uri,
                equals('string'),
              );

              expect(
                result.stopMessages,
                isEmpty,
              );

              expect(
                result.recommendedMaxAgeMinutes,
                equals(0),
              );

              expect(
                result.searchCriteria?.dateTime,
                equals(DateTime.parse('1970-01-01T00:00:00Z')),
              );

              expect(
                result.searchCriteria?.dateTimeType,
                equals('string'),
              );

              expect(
                result.searchCriteria?.timeAdjustments?.earliest?.date,
                equals('string'),
              );

              expect(
                result.searchCriteria?.timeAdjustments?.earliest?.time,
                equals('string'),
              );

              expect(
                result.searchCriteria?.timeAdjustments?.earliest?.timeIs,
                equals('string'),
              );

              expect(
                result.searchCriteria?.timeAdjustments?.earliest?.uri,
                equals('string'),
              );

              expect(
                result.searchCriteria?.timeAdjustments?.earlier?.date,
                equals('string'),
              );

              expect(
                result.searchCriteria?.timeAdjustments?.earlier?.time,
                equals('string'),
              );

              expect(
                result.searchCriteria?.timeAdjustments?.earlier?.timeIs,
                equals('string'),
              );

              expect(
                result.searchCriteria?.timeAdjustments?.earlier?.uri,
                equals('string'),
              );

              expect(
                result.searchCriteria?.timeAdjustments?.later?.date,
                equals('string'),
              );

              expect(
                result.searchCriteria?.timeAdjustments?.later?.time,
                equals('string'),
              );

              expect(
                result.searchCriteria?.timeAdjustments?.later?.timeIs,
                equals('string'),
              );

              expect(
                result.searchCriteria?.timeAdjustments?.later?.uri,
                equals('string'),
              );

              expect(
                result.searchCriteria?.timeAdjustments?.latest?.date,
                equals('string'),
              );

              expect(
                result.searchCriteria?.timeAdjustments?.latest?.time,
                equals('string'),
              );

              expect(
                result.searchCriteria?.timeAdjustments?.latest?.timeIs,
                equals('string'),
              );

              expect(
                result.searchCriteria?.timeAdjustments?.latest?.uri,
                equals('string'),
              );

              expect(
                result.journeyVector?.from,
                equals('string'),
              );

              expect(
                result.journeyVector?.to,
                equals('string'),
              );

              expect(
                result.journeyVector?.via,
                equals('string'),
              );

              expect(
                result.journeyVector?.uri,
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
