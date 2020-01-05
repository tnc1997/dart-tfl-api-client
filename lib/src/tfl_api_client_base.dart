import 'package:http/http.dart';
import 'package:tfl_api_client/src/apis/accident_details_resource_api.dart';
import 'package:tfl_api_client/src/apis/air_quality_forecasts_resource_api.dart';
import 'package:tfl_api_client/src/apis/bike_points_resource_api.dart';
import 'package:tfl_api_client/src/apis/car_park_occupancies_resource_api.dart';
import 'package:tfl_api_client/src/apis/car_parks_resource_api.dart';
import 'package:tfl_api_client/src/apis/charge_connector_occupancies_resource_api.dart';
import 'package:tfl_api_client/src/apis/charge_connectors_resource_api.dart';
import 'package:tfl_api_client/src/apis/journey_modes_resource_api.dart';
import 'package:tfl_api_client/src/apis/journeys_resource_api.dart';
import 'package:tfl_api_client/src/apis/line_disruption_categories_resource_api.dart';
import 'package:tfl_api_client/src/apis/line_modes_resource_api.dart';
import 'package:tfl_api_client/src/apis/line_routes_resource_api.dart';
import 'package:tfl_api_client/src/apis/line_service_types_resource_api.dart';
import 'package:tfl_api_client/src/apis/line_status_severities_resource_api.dart';
import 'package:tfl_api_client/src/apis/line_statuses_resource_api.dart';
import 'package:tfl_api_client/src/apis/lines_resource_api.dart';
import 'package:tfl_api_client/src/apis/mode_active_service_types_resource_api.dart';
import 'package:tfl_api_client/src/apis/modes_resource_api.dart';
import 'package:tfl_api_client/src/apis/place_categories_resource_api.dart';
import 'package:tfl_api_client/src/apis/place_types_resource_api.dart';
import 'package:tfl_api_client/src/apis/places_resource_api.dart';
import 'package:tfl_api_client/src/apis/private_hire_operators_resource_api.dart';
import 'package:tfl_api_client/src/apis/road_categories_resource_api.dart';
import 'package:tfl_api_client/src/apis/road_disruptions_resource_api.dart';
import 'package:tfl_api_client/src/apis/road_status_severities_resource_api.dart';
import 'package:tfl_api_client/src/apis/roads_resource_api.dart';
import 'package:tfl_api_client/src/apis/stop_point_categories_resource_api.dart';
import 'package:tfl_api_client/src/apis/stop_point_modes_resource_api.dart';
import 'package:tfl_api_client/src/apis/stop_point_types_resource_api.dart';
import 'package:tfl_api_client/src/apis/stop_points_resource_api.dart';
import 'package:tfl_api_client/src/apis/vehicles_resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

const _rootUrl = 'https://api.tfl.gov.uk/';

class TflApi {
  final ApiRequester _requester;

  TflApi(Client client) : _requester = ApiRequester(client, _rootUrl);

  AccidentDetailsResourceApi get accidentDetails =>
      AccidentDetailsResourceApi(_requester);

  AirQualityForecastsResourceApi get airQualityForecasts =>
      AirQualityForecastsResourceApi(_requester);

  BikePointsResourceApi get bikePoints => BikePointsResourceApi(_requester);

  CarParkOccupanciesResourceApi get carParkOccupancies =>
      CarParkOccupanciesResourceApi(_requester);

  CarParksResourceApi get carParks => CarParksResourceApi(_requester);

  ChargeConnectorOccupanciesResourceApi get chargeConnectorOccupancies =>
      ChargeConnectorOccupanciesResourceApi(_requester);

  ChargeConnectorsResourceApi get chargeConnectors =>
      ChargeConnectorsResourceApi(_requester);

  JourneyModesResourceApi get journeyModes =>
      JourneyModesResourceApi(_requester);

  JourneysResourceApi get journeys => JourneysResourceApi(_requester);

  LineDisruptionCategoriesResourceApi get lineDisruptionCategories =>
      LineDisruptionCategoriesResourceApi(_requester);

  LineModesResourceApi get lineModes => LineModesResourceApi(_requester);

  LineRoutesResourceApi get lineRoutes => LineRoutesResourceApi(_requester);

  LineServiceTypesResourceApi get lineServiceTypes =>
      LineServiceTypesResourceApi(_requester);

  LineStatusSeveritiesResourceApi get lineStatusSeverities =>
      LineStatusSeveritiesResourceApi(_requester);

  LineStatusesResourceApi get lineStatuses =>
      LineStatusesResourceApi(_requester);

  LinesResourceApi get lines => LinesResourceApi(_requester);

  ModeActiveServiceTypesResourceApi get modeActiveServiceTypes =>
      ModeActiveServiceTypesResourceApi(_requester);

  ModesResourceApi get modes => ModesResourceApi(_requester);

  PlaceCategoriesResourceApi get placeCategories =>
      PlaceCategoriesResourceApi(_requester);

  PlaceTypesResourceApi get placeTypes => PlaceTypesResourceApi(_requester);

  PlacesResourceApi get places => PlacesResourceApi(_requester);

  PrivateHireOperatorsResourceApi get privateHireOperators =>
      PrivateHireOperatorsResourceApi(_requester);

  RoadCategoriesResourceApi get roadCategories =>
      RoadCategoriesResourceApi(_requester);

  RoadDisruptionsResourceApi get roadDisruptions =>
      RoadDisruptionsResourceApi(_requester);

  RoadStatusSeveritiesResourceApi get roadStatusSeverities =>
      RoadStatusSeveritiesResourceApi(_requester);

  RoadsResourceApi get roads => RoadsResourceApi(_requester);

  StopPointCategoriesResourceApi get stopPointCategories =>
      StopPointCategoriesResourceApi(_requester);

  StopPointModesResourceApi get stopPointModes =>
      StopPointModesResourceApi(_requester);

  StopPointTypesResourceApi get stopPointTypes =>
      StopPointTypesResourceApi(_requester);

  StopPointsResourceApi get stopPoints => StopPointsResourceApi(_requester);

  VehiclesResourceApi get vehicles => VehiclesResourceApi(_requester);
}
