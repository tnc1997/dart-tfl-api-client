import 'package:http/http.dart' as http;

import 'services/accident_stats_service.dart';
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

  AccidentStatsService? _accidentStats;
  AirQualityService? _airQuality;
  BikePointService? _bikePoint;
  JourneyService? _journey;
  LineService? _line;
  ModeService? _mode;
  OccupancyService? _occupancy;
  PlaceService? _place;
  RoadService? _road;
  SearchService? _search;
  StopPointService? _stopPoint;
  VehicleService? _vehicle;

  TflApiClient({
    http.Client? client,
  }) : _client = client ?? http.Client();

  AccidentStatsService get accidentStats {
    return _accidentStats ??= AccidentStatsService(
      client: _client,
    );
  }

  AirQualityService get airQuality {
    return _airQuality ??= AirQualityService(
      client: _client,
    );
  }

  BikePointService get bikePoint {
    return _bikePoint ??= BikePointService(
      client: _client,
    );
  }

  JourneyService get journey {
    return _journey ??= JourneyService(
      client: _client,
    );
  }

  LineService get line {
    return _line ??= LineService(
      client: _client,
    );
  }

  ModeService get mode {
    return _mode ??= ModeService(
      client: _client,
    );
  }

  OccupancyService get occupancy {
    return _occupancy ??= OccupancyService(
      client: _client,
    );
  }

  PlaceService get place {
    return _place ??= PlaceService(
      client: _client,
    );
  }

  RoadService get road {
    return _road ??= RoadService(
      client: _client,
    );
  }

  SearchService get search {
    return _search ??= SearchService(
      client: _client,
    );
  }

  StopPointService get stopPoint {
    return _stopPoint ??= StopPointService(
      client: _client,
    );
  }

  VehicleService get vehicle {
    return _vehicle ??= VehicleService(
      client: _client,
    );
  }
}
