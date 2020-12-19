import 'dart:io';

import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

void main() {
  group(
    'extensions',
    () {
      group(
        'ResponseExtensions',
        () {
          test(
            'isSuccessStatusCode',
            () {
              expect(Response('', 200).isSuccessStatusCode, isTrue);
              expect(Response('', 204).isSuccessStatusCode, isTrue);
              expect(Response('', 404).isSuccessStatusCode, isFalse);
              expect(Response('', 500).isSuccessStatusCode, isFalse);
            },
          );
        },
      );
    },
  );

  group(
    'services',
    () {
      const accidentStatYear = 2010;
      const bikePointId = 'BikePoints_1';
      const bikePointQuery = 'River Street';
      const journeyFrom = '940GZZLUHAW';
      const journeyTo = '940GZZLUEAC';
      const lineDirection = 'outbound';
      const lineFromStopPointId = '940GZZLUHAW';
      const lineId = 'bakerloo';
      const lineIds = ['bakerloo'];
      const lineModes = ['tube'];
      const lineQuery = 'bakerloo';
      const lineSeverity = 0;
      const lineStopPointId = '940GZZLUHAW';
      const lineToStopPointId = '940GZZLUEAC';
      const modeMode = 'tube';
      const occupancyBikePointIds = [
        'BikePoints_1',
      ];
      const occupancyCarParkId = 'CarParks_800491';
      const occupancyChargeConnectorIds = [
        'ChargePointESB-UT076S (Taxi-Only)-1',
      ];
      const placeId = 'BikePoints_1';
      const placeLat = 51.529163;
      const placeLon = -0.10997;
      const placeName = 'River Street';
      const placeRadius = 100.0;
      const placeType = 'BikePoint';
      const placeTypes = [
        'BikePoint',
      ];
      const roadDisruptionIds = ['TIMS-250022'];
      const roadIds = ['A1'];
      const searchBusSchedulesQuery = '1';
      const searchSiteQuery = 'River Street';
      const stopPointDirection = 'outbound';
      const stopPointId = '940GZZLUHAW';
      const stopPointIds = ['940GZZLUHAW'];
      const stopPointLat = 51.592268;
      const stopPointLon = -0.335217;
      const stopPointLineId = 'bakerloo';
      const stopPointModes = ['tube'];
      const stopPointPage = 1;
      const stopPointQuery = 'Harrow & Wealdstone Underground Station';
      const stopPointRadius = 100;
      const stopPointSmsCode = '58824';
      const stopPointTypes = ['NaptanMetroStation'];
      const stopPointToStopPointId = '940GZZLUEAC';
      const vehicleIds = ['LTZ1150'];
      const vehicleVrm = 'LTZ1150';

      late TflApiClient api;
      late Client client;

      group(
        'AccidentStatService',
        () {
          test(
            'get',
            () async {
              await expectLater(
                api.accidentStats.get(accidentStatYear),
                completes,
              );
            },
          );
        },
      );

      group(
        'AirQualityService',
        () {
          test(
            'get',
            () async {
              await expectLater(
                api.airQualities.get(),
                completes,
              );
            },
          );
        },
      );

      group(
        'BikePointService',
        () {
          test(
            'getAll',
            () async {
              await expectLater(
                api.bikePoints.getAll(),
                completes,
              );
            },
          );

          test(
            'get',
            () async {
              await expectLater(
                api.bikePoints.get(bikePointId),
                completes,
              );
            },
          );

          test(
            'search',
            () async {
              await expectLater(
                api.bikePoints.search(bikePointQuery),
                completes,
              );
            },
          );
        },
      );

      group(
        'JourneyService',
        () {
          test(
            'meta',
            () async {
              await expectLater(
                api.journeys.meta(),
                completes,
              );
            },
          );

          test(
            'journeyResultsByPathFromPathToQueryViaQueryNationalSearchQueryDateQu',
            () async {
              await expectLater(
                api.journeys
                    .journeyResultsByPathFromPathToQueryViaQueryNationalSearchQueryDateQu(
                        journeyFrom, journeyTo),
                completes,
              );
            },
          );
        },
      );

      group(
        'LineService',
        () {
          test(
            'metaModes',
            () async {
              await expectLater(
                api.lines.metaModes(),
                completes,
              );
            },
          );

          test(
            'metaSeverity',
            () async {
              await expectLater(
                api.lines.metaSeverity(),
                completes,
              );
            },
          );

          test(
            'metaDisruptionCategories',
            () async {
              await expectLater(
                api.lines.metaDisruptionCategories(),
                completes,
              );
            },
          );

          test(
            'metaServiceTypes',
            () async {
              await expectLater(
                api.lines.metaServiceTypes(),
                completes,
              );
            },
          );

          test(
            'getByPathIds',
            () async {
              await expectLater(
                api.lines.getByPathIds(lineIds),
                completes,
              );
            },
          );

          test(
            'getByModeByPathModes',
            () async {
              await expectLater(
                api.lines.getByModeByPathModes(lineModes),
                completes,
              );
            },
          );

          test(
            'routeByQueryServiceTypes',
            () async {
              await expectLater(
                api.lines.routeByQueryServiceTypes(),
                completes,
              );
            },
          );

          test(
            'lineRoutesByIdsByPathIdsQueryServiceTypes',
            () async {
              await expectLater(
                api.lines.lineRoutesByIdsByPathIdsQueryServiceTypes(lineIds),
                completes,
              );
            },
          );

          test(
            'routeByModeByPathModesQueryServiceTypes',
            () async {
              await expectLater(
                api.lines.routeByModeByPathModesQueryServiceTypes(lineModes),
                completes,
              );
            },
          );

          test(
            'routeSequenceByPathIdPathDirectionQueryServiceTypesQueryExcludeCrowding',
            () async {
              await expectLater(
                api.lines
                    .routeSequenceByPathIdPathDirectionQueryServiceTypesQueryExcludeCrowding(
                        lineId, lineDirection),
                completes,
              );
            },
          );

          test(
            'statusByPathIdsPathStartDatePathEndDateQueryDetail',
            () async {
              await expectLater(
                api.lines.statusByPathIdsPathStartDatePathEndDateQueryDetail(
                    lineIds,
                    DateTime.now(),
                    DateTime.now().add(Duration(days: 1))),
                completes,
              );
            },
          );

          test(
            'statusByIdsByPathIdsQueryDetail',
            () async {
              await expectLater(
                api.lines.statusByIdsByPathIdsQueryDetail(lineIds),
                completes,
              );
            },
          );

          test(
            'searchByPathQueryQueryModesQueryServiceTypes',
            () async {
              await expectLater(
                api.lines
                    .searchByPathQueryQueryModesQueryServiceTypes(lineQuery),
                completes,
              );
            },
          );

          test(
            'statusBySeverityByPathSeverity',
            () async {
              await expectLater(
                api.lines.statusBySeverityByPathSeverity(lineSeverity),
                completes,
              );
            },
          );

          test(
            'statusByModeByPathModesQueryDetailQuerySeverityLevel',
            () async {
              await expectLater(
                api.lines.statusByModeByPathModesQueryDetailQuerySeverityLevel(
                    lineModes),
                completes,
              );
            },
          );

          test(
            'stopPointsByPathIdQueryTflOperatedNationalRailStationsOnly',
            () async {
              await expectLater(
                api.lines
                    .stopPointsByPathIdQueryTflOperatedNationalRailStationsOnly(
                        lineId),
                completes,
              );
            },
          );

          test(
            'timetableByPathFromStopPointIdPathId',
            () async {
              await expectLater(
                api.lines.timetableByPathFromStopPointIdPathId(
                    lineFromStopPointId, lineId),
                completes,
              );
            },
          );

          test(
            'timetableToByPathFromStopPointIdPathIdPathToStopPointId',
            () async {
              await expectLater(
                api.lines
                    .timetableToByPathFromStopPointIdPathIdPathToStopPointId(
                        lineFromStopPointId, lineId, lineToStopPointId),
                completes,
              );
            },
          );

          test(
            'disruptionByPathIds',
            () async {
              await expectLater(
                api.lines.disruptionByPathIds(lineIds),
                completes,
              );
            },
          );

          test(
            'disruptionByModeByPathModes',
            () async {
              await expectLater(
                api.lines.disruptionByModeByPathModes(lineModes),
                completes,
              );
            },
          );

          test(
            'arrivalsWithStopPointByPathIdsPathStopPointIdQueryDirectionQueryDestina',
            () async {
              await expectLater(
                api.lines
                    .arrivalsWithStopPointByPathIdsPathStopPointIdQueryDirectionQueryDestina(
                        lineIds, lineStopPointId),
                completes,
              );
            },
          );

          test(
            'arrivalsByPathIds',
            () async {
              await expectLater(
                api.lines.arrivalsByPathIds(lineIds),
                completes,
              );
            },
          );
        },
      );

      group(
        'ModeService',
        () {
          test(
            'getActiveServiceTypes',
            () async {
              await expectLater(
                api.modes.getActiveServiceTypes(),
                completes,
              );
            },
          );

          test(
            'arrivals',
            () async {
              await expectLater(
                api.modes.arrivals(modeMode),
                completes,
              );
            },
          );
        },
      );

      group(
        'OccupancyService',
        () {
          test(
            'get',
            () async {
              await expectLater(
                api.occupancies.get(),
                completes,
              );
            },
          );

          test(
            'getAllChargeConnectorStatus',
            () async {
              await expectLater(
                api.occupancies.getAllChargeConnectorStatus(),
                completes,
              );
            },
          );

          test(
            'getByPathId',
            () async {
              await expectLater(
                api.occupancies.getByPathId(occupancyCarParkId),
                completes,
              );
            },
          );

          test(
            'getChargeConnectorStatusByPathIds',
            () async {
              await expectLater(
                api.occupancies.getChargeConnectorStatusByPathIds(
                    occupancyChargeConnectorIds),
                completes,
              );
            },
          );

          test(
            'getBikePointsOccupanciesByPathIds',
            () async {
              await expectLater(
                api.occupancies
                    .getBikePointsOccupanciesByPathIds(occupancyBikePointIds),
                completes,
              );
            },
          );
        },
      );

      group(
        'PlaceService',
        () {
          test(
            'metaCategories',
            () async {
              await expectLater(
                api.places.metaCategories(),
                completes,
              );
            },
          );

          test(
            'metaPlaceTypes',
            () async {
              await expectLater(
                api.places.metaPlaceTypes(),
                completes,
              );
            },
          );

          test(
            'getByTypeByPathTypesQueryActiveOnly',
            () async {
              await expectLater(
                api.places.getByTypeByPathTypesQueryActiveOnly(placeTypes),
                completes,
              );
            },
          );

          test(
            'getByPathIdQueryIncludeChildren',
            () async {
              await expectLater(
                api.places.getByPathIdQueryIncludeChildren(placeId),
                completes,
              );
            },
          );

          test(
            'getByGeoPointByQueryLatQueryLonQueryRadiusQueryCategoriesQueryIncludeC',
            () async {
              await expectLater(
                api.places
                    .getByGeoPointByQueryLatQueryLonQueryRadiusQueryCategoriesQueryIncludeC(
                        placeLat, placeLon, placeRadius),
                completes,
              );
            },
          );

          test(
            'getAtByPathTypePathLatPathLon',
            () async {
              await expectLater(
                api.places.getAtByPathTypePathLatPathLon(
                    placeType, placeLat, placeLon),
                completes,
              );
            },
          );

          test(
            'searchByQueryNameQueryTypes',
            () async {
              await expectLater(
                api.places.searchByQueryNameQueryTypes(placeName),
                completes,
              );
            },
          );
        },
      );

      group(
        'RoadService',
        () {
          test(
            'get',
            () async {
              await expectLater(
                api.roads.get(),
                completes,
              );
            },
          );

          test(
            'getByPathIds',
            () async {
              await expectLater(
                api.roads.getByPathIds(roadIds),
                completes,
              );
            },
          );

          test(
            'statusByPathIdsQueryStartDateQueryEndDate',
            () async {
              await expectLater(
                api.roads.statusByPathIdsQueryStartDateQueryEndDate(roadIds),
                completes,
              );
            },
          );

          test(
            'disruptionByPathIdsQueryStripContentQuerySeveritiesQueryCategoriesQuery',
            () async {
              await expectLater(
                api.roads
                    .disruptionByPathIdsQueryStripContentQuerySeveritiesQueryCategoriesQuery(
                        roadIds),
                completes,
              );
            },
          );

          test(
            'disruptedStreetsByQueryStartDateQueryEndDate',
            () async {
              await expectLater(
                api.roads.disruptedStreetsByQueryStartDateQueryEndDate(
                    DateTime.now(), DateTime.now().add(Duration(days: 1))),
                completes,
              );
            },
          );

          test(
            'disruptionByIdByPathDisruptionIdsQueryStripContent',
            () async {
              await expectLater(
                api.roads.disruptionByIdByPathDisruptionIdsQueryStripContent(
                    roadDisruptionIds),
                completes,
              );
            },
          );

          test(
            'metaCategories',
            () async {
              await expectLater(
                api.roads.metaCategories(),
                completes,
              );
            },
          );

          test(
            'metaSeverities',
            () async {
              await expectLater(
                api.roads.metaSeverities(),
                completes,
              );
            },
          );
        },
      );

      group(
        'SearchService',
        () {
          test(
            'getByQueryQuery',
            () async {
              await expectLater(
                api.searches.getByQueryQuery(searchSiteQuery),
                completes,
              );
            },
          );

          test(
            'busSchedulesByQueryQuery',
            () async {
              await expectLater(
                api.searches.busSchedulesByQueryQuery(searchBusSchedulesQuery),
                completes,
              );
            },
          );

          test(
            'metaSearchProviders',
            () async {
              await expectLater(
                api.searches.metaSearchProviders(),
                completes,
              );
            },
          );

          test(
            'metaCategories',
            () async {
              await expectLater(
                api.searches.metaCategories(),
                completes,
              );
            },
          );

          test(
            'metaSorts',
            () async {
              await expectLater(
                api.searches.metaSorts(),
                completes,
              );
            },
          );
        },
      );

      group(
        'StopPointService',
        () {
          test(
            'metaCategories',
            () async {
              await expectLater(
                api.stopPoints.metaCategories(),
                completes,
              );
            },
          );

          test(
            'metaStopTypes',
            () async {
              await expectLater(
                api.stopPoints.metaStopTypes(),
                completes,
              );
            },
          );

          test(
            'metaModes',
            () async {
              await expectLater(
                api.stopPoints.metaModes(),
                completes,
              );
            },
          );

          test(
            'getByPathIdsQueryIncludeCrowdingData',
            () async {
              await expectLater(
                api.stopPoints
                    .getByPathIdsQueryIncludeCrowdingData(stopPointIds),
                completes,
              );
            },
          );

          test(
            'getByPathIdQueryPlaceTypes',
            () async {
              await expectLater(
                api.stopPoints
                    .getByPathIdQueryPlaceTypes(stopPointId, stopPointTypes),
                completes,
              );
            },
          );

          test(
            'crowdingByPathIdPathLineQueryDirection',
            () async {
              await expectLater(
                api.stopPoints.crowdingByPathIdPathLineQueryDirection(
                    stopPointId, stopPointLineId, stopPointDirection),
                completes,
              );
            },
          );

          test(
            'getByTypeByPathTypes',
            () async {
              await expectLater(
                api.stopPoints.getByTypeByPathTypes(stopPointTypes),
                completes,
              );
            },
          );

          test(
            'getByTypeWithPaginationByPathTypesPathPage',
            () async {
              await expectLater(
                api.stopPoints.getByTypeWithPaginationByPathTypesPathPage(
                    stopPointTypes, stopPointPage),
                completes,
              );
            },
          );

          test(
            'getServiceTypesByQueryIdQueryLineIdsQueryModes',
            () async {
              await expectLater(
                api.stopPoints.getServiceTypesByQueryIdQueryLineIdsQueryModes(
                    stopPointId),
                completes,
              );
            },
          );

          test(
            'arrivalsByPathId',
            () async {
              await expectLater(
                api.stopPoints.arrivalsByPathId(stopPointId),
                completes,
              );
            },
          );

          test(
            'arrivalDeparturesByPathIdQueryLineIds',
            () async {
              await expectLater(
                api.stopPoints.arrivalDeparturesByPathIdQueryLineIds(
                    '910GHROW', ['london-overground']),
                completes,
              );
            },
          );

          test(
            'reachableFromByPathIdPathLineIdQueryServiceTypes',
            () async {
              await expectLater(
                api.stopPoints.reachableFromByPathIdPathLineIdQueryServiceTypes(
                    stopPointId, stopPointLineId),
                completes,
              );
            },
          );

          test(
            'routeByPathIdQueryServiceTypes',
            () async {
              await expectLater(
                api.stopPoints.routeByPathIdQueryServiceTypes(stopPointId),
                completes,
              );
            },
          );

          test(
            'disruptionByModeByPathModesQueryIncludeRouteBlockedStops',
            () async {
              await expectLater(
                api.stopPoints
                    .disruptionByModeByPathModesQueryIncludeRouteBlockedStops(
                        stopPointModes),
                completes,
              );
            },
          );

          test(
            'disruptionByPathIdsQueryGetFamilyQueryIncludeRouteBlockedStopsQuer',
            () async {
              await expectLater(
                api.stopPoints
                    .disruptionByPathIdsQueryGetFamilyQueryIncludeRouteBlockedStopsQuer(
                        stopPointIds),
                completes,
              );
            },
          );

          test(
            'directionByPathIdPathToStopPointIdQueryLineId',
            () async {
              await expectLater(
                api.stopPoints.directionByPathIdPathToStopPointIdQueryLineId(
                    stopPointId, stopPointToStopPointId),
                completes,
              );
            },
          );

          test(
            'getByGeoPointByQueryLatQueryLonQueryStopTypesQueryRadiusQueryUseSt',
            () async {
              await expectLater(
                api.stopPoints
                    .getByGeoPointByQueryLatQueryLonQueryStopTypesQueryRadiusQueryUseSt(
                        stopPointTypes,
                        stopPointLat,
                        stopPointLon,
                        stopPointRadius),
                completes,
              );
            },
          );

          test(
            'getByModeByPathModesQueryPage',
            () async {
              await expectLater(
                api.stopPoints.getByModeByPathModesQueryPage(stopPointModes),
                completes,
              );
            },
          );

          test(
            'searchByPathQueryQueryModesQueryFaresOnlyQueryMaxResultsQueryLines',
            () async {
              await expectLater(
                api.stopPoints
                    .searchByPathQueryQueryModesQueryFaresOnlyQueryMaxResultsQueryLines(
                        stopPointQuery),
                completes,
              );
            },
          );

          test(
            'searchByQueryQueryQueryModesQueryFaresOnlyQueryMaxResultsQueryLine',
            () async {
              await expectLater(
                api.stopPoints
                    .searchByQueryQueryQueryModesQueryFaresOnlyQueryMaxResultsQueryLine(
                        stopPointQuery),
                completes,
              );
            },
          );

          test(
            'getBySmsByPathIdQueryOutput',
            () async {
              await expectLater(
                api.stopPoints.getBySmsByPathIdQueryOutput(stopPointSmsCode),
                completes,
              );
            },
          );

          test(
            'getTaxiRanksByIdsByPathStopPointId',
            () async {
              await expectLater(
                api.stopPoints.getTaxiRanksByIdsByPathStopPointId(stopPointId),
                completes,
              );
            },
          );

          test(
            'getCarParksByIdByPathStopPointId',
            () async {
              await expectLater(
                api.stopPoints.getCarParksByIdByPathStopPointId(stopPointId),
                completes,
              );
            },
          );
        },
      );

      group(
        'VehicleService',
        () {
          test(
            'getByPathIds',
            () async {
              await expectLater(
                api.vehicles.getByPathIds(vehicleIds),
                completes,
              );
            },
          );

          test(
            'getEmissionsSurchargeComplianceByQueryVrm',
            () async {
              await expectLater(
                api.vehicles
                    .getEmissionsSurchargeComplianceByQueryVrm(vehicleVrm),
                completes,
              );
            },
          );

          test(
            'getUlezComplianceByQueryVrm',
            () async {
              await expectLater(
                api.vehicles.getUlezComplianceByQueryVrm(vehicleVrm),
                completes,
              );
            },
          );
        },
      );

      setUp(
        () {
          client = clientViaAppKey(Platform.environment['APP_KEY']!);

          api = TflApiClient(client: client);
        },
      );

      tearDown(
        () {
          client.close();
        },
      );
    },
    timeout: Timeout(
      Duration(
        minutes: 1,
      ),
    ),
  );
}
