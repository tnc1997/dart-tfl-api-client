import 'package:http/http.dart';

import 'apis/accident_stats_api.dart';
import 'apis/air_qualities_api.dart';
import 'apis/bike_points_api.dart';
import 'apis/car_park_occupancies_api.dart';
import 'apis/car_parks_api.dart';
import 'apis/charge_connector_occupancies_api.dart';
import 'apis/charge_connectors_api.dart';
import 'apis/journey_modes_api.dart';
import 'apis/journeys_api.dart';
import 'apis/line_disruption_categories_api.dart';
import 'apis/line_modes_api.dart';
import 'apis/line_routes_api.dart';
import 'apis/line_service_types_api.dart';
import 'apis/line_status_severities_api.dart';
import 'apis/line_statuses_api.dart';
import 'apis/lines_api.dart';
import 'apis/mode_active_service_types_api.dart';
import 'apis/modes_api.dart';
import 'apis/place_categories_api.dart';
import 'apis/place_types_api.dart';
import 'apis/places_api.dart';
import 'apis/private_hire_operators_api.dart';
import 'apis/road_categories_api.dart';
import 'apis/road_disruptions_api.dart';
import 'apis/road_status_severities_api.dart';
import 'apis/roads_api.dart';
import 'apis/stop_point_categories_api.dart';
import 'apis/stop_point_modes_api.dart';
import 'apis/stop_point_stop_types_api.dart';
import 'apis/stop_points_api.dart';
import 'apis/vehicles_api.dart';
import 'requesters/api_requester.dart';

const _rootUrl = 'https://api.tfl.gov.uk/';

class TflApi {
  final ApiRequester _requester;

  TflApi(Client client) : _requester = ApiRequester(client, _rootUrl);

  AccidentStatsApi get accidentStats => AccidentStatsApi(_requester);

  AirQualitiesApi get airQualities => AirQualitiesApi(_requester);

  BikePointsApi get bikePoints => BikePointsApi(_requester);

  CarParkOccupanciesApi get carParkOccupancies =>
      CarParkOccupanciesApi(_requester);

  CarParksApi get carParks => CarParksApi(_requester);

  ChargeConnectorOccupanciesApi get chargeConnectorOccupancies =>
      ChargeConnectorOccupanciesApi(_requester);

  ChargeConnectorsApi get chargeConnectors => ChargeConnectorsApi(_requester);

  JourneyModesApi get journeyModes => JourneyModesApi(_requester);

  JourneysApi get journeys => JourneysApi(_requester);

  LineDisruptionCategoriesApi get lineDisruptionCategories =>
      LineDisruptionCategoriesApi(_requester);

  LineModesApi get lineModes => LineModesApi(_requester);

  LineRoutesApi get lineRoutes => LineRoutesApi(_requester);

  LineServiceTypesApi get lineServiceTypes => LineServiceTypesApi(_requester);

  LineStatusSeveritiesApi get lineStatusSeverities =>
      LineStatusSeveritiesApi(_requester);

  LineStatusesApi get lineStatuses => LineStatusesApi(_requester);

  LinesApi get lines => LinesApi(_requester);

  ModeActiveServiceTypesApi get modeActiveServiceTypes =>
      ModeActiveServiceTypesApi(_requester);

  ModesApi get modes => ModesApi(_requester);

  PlaceCategoriesApi get placeCategories => PlaceCategoriesApi(_requester);

  PlaceTypesApi get placeTypes => PlaceTypesApi(_requester);

  PlacesApi get places => PlacesApi(_requester);

  PrivateHireOperatorsApi get privateHireOperators =>
      PrivateHireOperatorsApi(_requester);

  RoadCategoriesApi get roadCategories => RoadCategoriesApi(_requester);

  RoadDisruptionsApi get roadDisruptions => RoadDisruptionsApi(_requester);

  RoadStatusSeveritiesApi get roadStatusSeverities =>
      RoadStatusSeveritiesApi(_requester);

  RoadsApi get roads => RoadsApi(_requester);

  StopPointCategoriesApi get stopPointCategories =>
      StopPointCategoriesApi(_requester);

  StopPointModesApi get stopPointModes => StopPointModesApi(_requester);

  StopPointStopTypesApi get stopPointStopTypes =>
      StopPointStopTypesApi(_requester);

  StopPointsApi get stopPoints => StopPointsApi(_requester);

  VehiclesApi get vehicles => VehiclesApi(_requester);
}
