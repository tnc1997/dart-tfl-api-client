import 'package:dotenv/dotenv.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

void main() {
  Client _client;

  TflApi _tflApi;

  group('AccidentStatsApi', () {
    test('getByYear', () async {
      expect(
        await _tflApi.accidentStats.getByYear(2016),
        isA<List<AccidentDetail>>(),
      );
    });
  });

  group('AirQualitiesApi', () {
    test('get', () async {
      expect(
        await _tflApi.airQualities.get(),
        isA<LondonAirForecast>(),
      );
    });
  });

  group('BikePointsApi', () {
    test('get', () async {
      expect(
        await _tflApi.bikePoints.get(),
        isA<List<Place>>(),
      );
    });

    test('getBikePointOccupancy', () async {
      expect(
        await _tflApi.bikePoints.getBikePointOccupancy('BikePoints_1'),
        isA<BikePointOccupancy>(),
      );
    });

    test('getById', () async {
      expect(
        await _tflApi.bikePoints.getById('BikePoints_1'),
        isA<Place>(),
      );
    });

    test('search', () async {
      expect(
        await _tflApi.bikePoints.search('BikePoints_1'),
        isA<List<Place>>(),
      );
    });
  });

  group('CarParkOccupanciesApi', () {
    test('get', () async {
      expect(
        await _tflApi.carParkOccupancies.get(),
        isA<List<CarParkOccupancy>>(),
      );
    });
  });

  group('CarParksApi', () {
    test('getCarParkOccupancy', () async {
      expect(
        await _tflApi.carParks.getCarParkOccupancy('CarParks_800491'),
        isA<CarParkOccupancy>(),
      );
    });
  });

  group('ChargeConnectorOccupanciesApi', () {
    test('get', () async {
      expect(
        await _tflApi.chargeConnectorOccupancies.get(),
        isA<List<ChargeConnectorOccupancy>>(),
      );
    });
  });

  group('ChargeConnectorsApi', () {
    test('getChargeConnectorOccupancy', () async {
      expect(
        await _tflApi.chargeConnectors.getChargeConnectorOccupancy(
          'ChargePointCM-10109-85029',
        ),
        isA<ChargeConnectorOccupancy>(),
      );
    });
  });

  group('JourneyModesApi', () {
    test('get', () async {
      expect(
        await _tflApi.journeyModes.get(),
        isA<List<Mode>>(),
      );
    });
  });

  group('JourneysApi', () {
    test('get', () async {
      expect(
        await _tflApi.journeys.get(
          'amersham',
          'chesham',
        ),
        isA<ItineraryResult>(),
      );
    });
  });

  group('LineDisruptionCategoriesApi', () {
    test('get', () async {
      expect(
        await _tflApi.lineDisruptionCategories.get(),
        isA<List<String>>(),
      );
    });
  });

  group('LineModesApi', () {
    test('get', () async {
      expect(
        await _tflApi.lineModes.get(),
        isA<List<Mode>>(),
      );
    });

    test('getLineDisruptions', () async {
      expect(
        await _tflApi.lineModes.getLineDisruptions('tube'),
        isA<List<LineDisruption>>(),
      );
    });

    test('getLineRoutes', () async {
      expect(
        await _tflApi.lineModes.getLineRoutes('tube'),
        isA<List<LineRoute>>(),
      );
    });

    test('getLineStatuses', () async {
      expect(
        await _tflApi.lineModes.getLineStatuses('tube'),
        isA<List<LineStatus>>(),
      );
    });

    test('getLines', () async {
      expect(
        await _tflApi.lineModes.getLines('tube'),
        isA<List<Line>>(),
      );
    });
  });

  group('LineRoutesApi', () {
    test('get', () async {
      expect(
        await _tflApi.lineRoutes.get(),
        isA<List<LineRoute>>(),
      );
    });
  });

  group('LineServiceTypesApi', () {
    test('get', () async {
      expect(
        await _tflApi.lineServiceTypes.get(),
        isA<List<String>>(),
      );
    });
  });

  group('LineStatusSeveritiesApi', () {
    test('get', () async {
      expect(
        await _tflApi.lineStatusSeverities.get(),
        isA<List<StatusSeverity>>(),
      );
    });
  });

  group('LineStatusesApi', () {
    test('getBySeverity', () async {
      expect(
        await _tflApi.lineStatuses.getBySeverity(0),
        isA<List<LineStatus>>(),
      );
    });
  });

  group('LinesApi', () {
    test('getById', () async {
      expect(
        await _tflApi.lines.getById('victoria'),
        isA<Line>(),
      );
    });

    test('getLineDisruptions', () async {
      expect(
        await _tflApi.lines.getLineDisruptions('victoria'),
        isA<List<LineDisruption>>(),
      );
    });

    test('getLineRoutes', () async {
      expect(
        await _tflApi.lines.getLineRoutes('victoria'),
        isA<List<LineRoute>>(),
      );
    });

    test('getLineStatuses', () async {
      expect(
        await _tflApi.lines.getLineStatuses('victoria'),
        isA<List<LineStatus>>(),
      );
    });

    test('getPredictions', () async {
      expect(
        await _tflApi.lines.getPredictions('victoria'),
        isA<List<Prediction>>(),
      );
    });

    test('getRouteSequences', () async {
      expect(
        await _tflApi.lines.getRouteSequences('victoria'),
        isA<List<RouteSequence>>(),
      );
    });

    test('getStopPoints', () async {
      expect(
        await _tflApi.lines.getStopPoints('victoria'),
        isA<List<StopPoint>>(),
      );
    });

    test('getTimetables', () async {
      expect(
        await _tflApi.lines.getTimetables('victoria', '940GZZLUVIC'),
        isA<TimetableResponse>(),
      );
    });

    test('search', () async {
      expect(
        await _tflApi.lines.search('victoria'),
        isA<RouteSearchResponse>(),
      );
    });
  });

  group('ModeActiveServiceTypesApi', () {
    test('get', () async {
      expect(
        await _tflApi.modeActiveServiceTypes.get(),
        isA<List<ActiveServiceType>>(),
      );
    });
  });

  group('ModesApi', () {
    test('getPredictions', () async {
      expect(
        await _tflApi.modes.getPredictions('tube'),
        isA<List<Prediction>>(),
      );
    });

    test('getStopPointDisruptions', () async {
      expect(
        await _tflApi.modes.getStopPointDisruptions('tube'),
        isA<List<StopPointDisruption>>(),
      );
    });

    test('getStopPoints', () async {
      expect(
        await _tflApi.modes.getStopPoints('tube'),
        isA<List<StopPoint>>(),
      );
    });
  });

  group('PlaceCategoriesApi', () {
    test('get', () async {
      expect(
        await _tflApi.placeCategories.get(),
        isA<List<PlaceCategory>>(),
      );
    });
  });

  group('PlaceTypesApi', () {
    test('get', () async {
      expect(
        await _tflApi.placeTypes.get(),
        isA<List<String>>(),
      );
    });
  });

  group('PlacesApi', () {
    test('get', () async {
      expect(
        await _tflApi.places.get(type: 'BikePoint'),
        isA<List<Place>>(),
      );
    });

    test('getById', () async {
      expect(
        await _tflApi.places.getById('BikePoints_1'),
        isA<Place>(),
      );
    });

    test('search', () async {
      expect(
        await _tflApi.places.search('BikePoints_1'),
        isA<List<Place>>(),
      );
    });
  });

  group('PrivateHireOperatorsApi', () {
    test('get', () async {
      expect(
        await _tflApi.privateHireOperators.get(),
        isA<List<PrivateHireOperator>>(),
      );
    });
  });

  group('RoadCategoriesApi', () {
    test('get', () async {
      expect(
        await _tflApi.roadCategories.get(),
        isA<List<String>>(),
      );
    });
  });

  group('RoadDisruptionsApi', () {
    /*test('get', () async {
      expect(
        await _tflApi.roadDisruptions.get(),
        isA<List<RoadDisruption>>(),
      );
    });*/

    /*test('getById', () async {
      expect(
        await _tflApi.roadDisruptions.getById(''),
        isA<RoadDisruption>(),
      );
    });*/
  });

  group('RoadStatusSeveritiesApi', () {
    test('get', () async {
      expect(
        await _tflApi.roadStatusSeverities.get(),
        isA<List<StatusSeverity>>(),
      );
    });
  });

  group('RoadsApi', () {
    test('get', () async {
      expect(
        await _tflApi.roads.get(),
        isA<List<Road>>(),
      );
    });

    test('getById', () async {
      expect(
        await _tflApi.roads.getById('a1'),
        isA<Road>(),
      );
    });

    test('getRoadDisruptions', () async {
      expect(
        await _tflApi.roads.getRoadDisruptions('a1'),
        isA<List<RoadDisruption>>(),
      );
    });

    test('getRoadStatuses', () async {
      expect(
        await _tflApi.roads.getRoadStatuses('a1'),
        isA<List<Road>>(),
      );
    });
  });

  group('StopPointCategoriesApi', () {
    test('get', () async {
      expect(
        await _tflApi.stopPointCategories.get(),
        isA<List<StopPointCategory>>(),
      );
    });
  });

  group('StopPointModesApi', () {
    test('get', () async {
      expect(
        await _tflApi.stopPointModes.get(),
        isA<List<Mode>>(),
      );
    });
  });

  group('StopPointStopTypesApi', () {
    test('get', () async {
      expect(
        await _tflApi.stopPointStopTypes.get(),
        isA<List<String>>(),
      );
    });
  });

  group('StopPointsApi', () {
    test('getById', () async {
      expect(
        await _tflApi.stopPoints.getById('940GZZLUVIC'),
        isA<StopPoint>(),
      );
    });

    test('getByLatLon', () async {
      expect(
        await _tflApi.stopPoints.getByLatLon(
          51.49454,
          -0.100601,
          ['NaptanMetroStation'],
        ),
        isA<List<StopPoint>>(),
      );
    });

    test('getBySmsCode', () async {
      expect(
        await _tflApi.stopPoints.getBySmsCode('47001'),
        isA<StopPoint>(),
      );
    });

    test('getByType', () async {
      expect(
        await _tflApi.stopPoints.getByType('tube'),
        isA<List<StopPoint>>(),
      );
    });

    test('getCarParks', () async {
      expect(
        await _tflApi.stopPoints.getCarParks('940GZZLUVIC'),
        isA<List<Place>>(),
      );
    });

    test('getDirection', () async {
      expect(
        await _tflApi.stopPoints.getDirection('940GZZLUVIC', '940GZZLUBXN'),
        isA<String>(),
      );
    });

    test('getLineServiceTypes', () async {
      expect(
        await _tflApi.stopPoints.getLineServiceTypes('940GZZLUVIC'),
        isA<List<LineServiceType>>(),
      );
    });

    test('getPlaces', () async {
      expect(
        await _tflApi.stopPoints.getPlaces('940GZZLUVIC', ['BikePoint']),
        isA<List<Place>>(),
      );
    });

    test('getPredictions', () async {
      expect(
        await _tflApi.stopPoints.getPredictions('940GZZLUVIC'),
        isA<List<Prediction>>(),
      );
    });

    test('getStopPointDisruptions', () async {
      expect(
        await _tflApi.stopPoints.getStopPointDisruptions('940GZZLUVIC'),
        isA<List<StopPointDisruption>>(),
      );
    });

    test('getStopPointRoutes', () async {
      expect(
        await _tflApi.stopPoints.getStopPointRoutes('940GZZLUVIC'),
        isA<List<StopPointRoute>>(),
      );
    });

    test('getTaxiRanks', () async {
      expect(
        await _tflApi.stopPoints.getTaxiRanks('940GZZLUVIC'),
        isA<List<Place>>(),
      );
    });
  });

  group('VehiclesApi', () {
    test('getPredictions', () async {
      expect(
        await _tflApi.vehicles.getPredictions('LT61 AHT'),
        isA<List<Prediction>>(),
      );
    });
  });

  setUp(() {
    _client = AppKeyAppIdClient(IOClient(), env['APP_KEY'], env['APP_ID']);

    _tflApi = TflApi(_client);
  });

  setUpAll(() {
    load();
  });

  tearDown(() {
    _client.close();
  });
}
