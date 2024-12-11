import 'package:http/http.dart';

import 'services/accident_stat_service.dart';
import 'services/air_quality_service.dart';
import 'services/bike_point_service.dart';
import 'services/journey_service.dart';
import 'services/line_service.dart';
import 'services/mode_service.dart';
import 'services/occupancy_service.dart';
import 'services/place_service.dart';
import 'services/road_service.dart';
import 'services/search_service.dart';
import 'services/stop_point_service.dart';
import 'services/vehicle_service.dart';

class TflApiClient {
  final TflApiClientContext _context;

  TflApiClient({
    required Client client,
  }) : _context = TflApiClientContext(
          client: client,
        );

  AccidentStatService get accidentStats => AccidentStatService(
        context: _context,
      );

  AirQualityService get airQualities => AirQualityService(
        context: _context,
      );

  BikePointService get bikePoints => BikePointService(
        context: _context,
      );

  JourneyService get journeys => JourneyService(
        context: _context,
      );

  LineService get lines => LineService(
        context: _context,
      );

  ModeService get modes => ModeService(
        context: _context,
      );

  OccupancyService get occupancies => OccupancyService(
        context: _context,
      );

  PlaceService get places => PlaceService(
        context: _context,
      );

  RoadService get roads => RoadService(
        context: _context,
      );

  SearchService get searches => SearchService(
        context: _context,
      );

  StopPointService get stopPoints => StopPointService(
        context: _context,
      );

  VehicleService get vehicles => VehicleService(
        context: _context,
      );
}

class TflApiClientContext {
  final Client client;

  const TflApiClientContext({
    required this.client,
  });
}
