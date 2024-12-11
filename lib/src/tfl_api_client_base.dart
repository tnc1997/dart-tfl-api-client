import 'package:http/http.dart' as http;

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
  final http.Client _client;

  AccidentStatService? _accidentStats;
  AirQualityService? _airQualities;
  BikePointService? _bikePoints;
  JourneyService? _journeys;
  LineService? _lines;
  ModeService? _modes;
  OccupancyService? _occupancies;
  PlaceService? _places;
  RoadService? _roads;
  SearchService? _searches;
  StopPointService? _stopPoints;
  VehicleService? _vehicles;

  TflApiClient({
    http.Client? client,
  }) : _client = client ?? http.Client();

  AccidentStatService get accidentStats {
    return _accidentStats ??= AccidentStatService(
      client: _client,
    );
  }

  AirQualityService get airQualities {
    return _airQualities ??= AirQualityService(
      client: _client,
    );
  }

  BikePointService get bikePoints {
    return _bikePoints ??= BikePointService(
      client: _client,
    );
  }

  JourneyService get journeys {
    return _journeys ??= JourneyService(
      client: _client,
    );
  }

  LineService get lines {
    return _lines ??= LineService(
      client: _client,
    );
  }

  ModeService get modes {
    return _modes ??= ModeService(
      client: _client,
    );
  }

  OccupancyService get occupancies {
    return _occupancies ??= OccupancyService(
      client: _client,
    );
  }

  PlaceService get places {
    return _places ??= PlaceService(
      client: _client,
    );
  }

  RoadService get roads {
    return _roads ??= RoadService(
      client: _client,
    );
  }

  SearchService get searches {
    return _searches ??= SearchService(
      client: _client,
    );
  }

  StopPointService get stopPoints {
    return _stopPoints ??= StopPointService(
      client: _client,
    );
  }

  VehicleService get vehicles {
    return _vehicles ??= VehicleService(
      client: _client,
    );
  }
}
