import 'package:dotenv/dotenv.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

void main() {
  Client _client;

  TflApi _tflApi;

  group('AccidentDetailsApi', () {
    test('get', () async {
      expect(
        await _tflApi.accidentDetails.get(year: 2016),
        isA<List<AccidentDetail>>(),
      );
    });
  });

  group('AirQualityForecastsApi', () {
    test('get', () async {
      expect(
        await _tflApi.airQualityForecasts.get(),
        isA<List<AirQualityForecast>>(),
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
    test('get', () async {
      expect(
        await _tflApi.carParks.get(),
        isA<List<Place>>(),
      );
    });

    test('getBays', () async {
      expect(
        await _tflApi.carParks.getBays('CarParks_800491'),
        isA<List<Bay>>(),
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
    test('get', () async {
      expect(
        await _tflApi.chargeConnectors.get(),
        isA<List<Place>>(),
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
          from: '1000006',
          to: '1000046',
        ),
        isA<List<Journey>>(),
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
    test('get', () async {
      expect(
        await _tflApi.lineStatuses.get(severity: 0),
        isA<List<LineStatus>>(),
      );
    });
  });

  group('LinesApi', () {
    test('get', () async {
      expect(
        await _tflApi.lines.get(mode: 'tube'),
        isA<List<Line>>(),
      );
    });

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
    test('get', () async {
      expect(
        await _tflApi.modes.get(),
        isA<List<Mode>>(),
      );
    });

    test('getPredictions', () async {
      expect(
        await _tflApi.modes.getPredictions('tube'),
        isA<List<Prediction>>(),
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
    test('get', () async {
      expect(
        await _tflApi.roadDisruptions.get(),
        isA<List<RoadDisruption>>(),
      );
    });
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

    test('getStopPointDisruptions', () async {
      expect(
        await _tflApi.stopPointModes.getStopPointDisruptions('tube'),
        isA<List<StopPointDisruption>>(),
      );
    });
  });

  group('StopPointTypesApi', () {
    test('get', () async {
      expect(
        await _tflApi.stopPointTypes.get(),
        isA<List<String>>(),
      );
    });
  });

  group('StopPointsApi', () {
    test('get', () async {
      expect(
        await _tflApi.stopPoints.get(type: 'NaptanMetroStation'),
        isA<List<StopPoint>>(),
      );

      expect(
        await _tflApi.stopPoints.get(mode: 'tube'),
        isA<List<StopPoint>>(),
      );
    });

    test('getById', () async {
      expect(
        await _tflApi.stopPoints.getById('940GZZLUVIC'),
        isA<StopPoint>(),
      );
    });

    test('getBySmsCode', () async {
      expect(
        await _tflApi.stopPoints.getBySmsCode('47001'),
        isA<StopPoint>(),
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
    test('get', () async {
      expect(
        await _tflApi.vehicles.get(mode: 'tube'),
        isA<List<Vehicle>>(),
      );
    });

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
