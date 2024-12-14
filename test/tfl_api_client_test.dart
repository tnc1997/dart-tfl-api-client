import 'dart:io';

import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

void main() {
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
                api.airQuality.get(),
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
                api.bikePoint.getAll(),
                completes,
              );
            },
          );

          test(
            'get',
            () async {
              await expectLater(
                api.bikePoint.get(bikePointId),
                completes,
              );
            },
          );

          test(
            'search',
            () async {
              await expectLater(
                api.bikePoint.search(bikePointQuery),
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
                api.journey.meta(),
                completes,
              );
            },
          );

          test(
            'journeyResultsByPathFromPathToQueryViaQueryNationalSearchQueryDateQu',
            () async {
              await expectLater(
                api.journey
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
                api.line.metaModes(),
                completes,
              );
            },
          );

          test(
            'metaSeverity',
            () async {
              await expectLater(
                api.line.metaSeverity(),
                completes,
              );
            },
          );

          test(
            'metaDisruptionCategories',
            () async {
              await expectLater(
                api.line.metaDisruptionCategories(),
                completes,
              );
            },
          );

          test(
            'metaServiceTypes',
            () async {
              await expectLater(
                api.line.metaServiceTypes(),
                completes,
              );
            },
          );

          test(
            'getByPathIds',
            () async {
              await expectLater(
                api.line.getByPathIds(lineIds),
                completes,
              );
            },
          );

          test(
            'getByModeByPathModes',
            () async {
              await expectLater(
                api.line.getByModeByPathModes(lineModes),
                completes,
              );
            },
          );

          test(
            'routeByQueryServiceTypes',
            () async {
              await expectLater(
                api.line.routeByQueryServiceTypes(),
                completes,
              );
            },
          );

          test(
            'lineRoutesByIdsByPathIdsQueryServiceTypes',
            () async {
              await expectLater(
                api.line.lineRoutesByIdsByPathIdsQueryServiceTypes(lineIds),
                completes,
              );
            },
          );

          test(
            'routeByModeByPathModesQueryServiceTypes',
            () async {
              await expectLater(
                api.line.routeByModeByPathModesQueryServiceTypes(lineModes),
                completes,
              );
            },
          );

          test(
            'routeSequenceByPathIdPathDirectionQueryServiceTypesQueryExcludeCrowding',
            () async {
              await expectLater(
                api.line
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
                api.line.statusByPathIdsPathStartDatePathEndDateQueryDetail(
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
                api.line.statusByIdsByPathIdsQueryDetail(lineIds),
                completes,
              );
            },
          );

          test(
            'searchByPathQueryQueryModesQueryServiceTypes',
            () async {
              await expectLater(
                api.line
                    .searchByPathQueryQueryModesQueryServiceTypes(lineQuery),
                completes,
              );
            },
          );

          test(
            'statusBySeverityByPathSeverity',
            () async {
              await expectLater(
                api.line.statusBySeverityByPathSeverity(lineSeverity),
                completes,
              );
            },
          );

          test(
            'statusByModeByPathModesQueryDetailQuerySeverityLevel',
            () async {
              await expectLater(
                api.line.statusByModeByPathModesQueryDetailQuerySeverityLevel(
                    lineModes),
                completes,
              );
            },
          );

          test(
            'stopPointsByPathIdQueryTflOperatedNationalRailStationsOnly',
            () async {
              await expectLater(
                api.line
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
                api.line.timetableByPathFromStopPointIdPathId(
                    lineFromStopPointId, lineId),
                completes,
              );
            },
          );

          test(
            'timetableToByPathFromStopPointIdPathIdPathToStopPointId',
            () async {
              await expectLater(
                api.line
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
                api.line.disruptionByPathIds(lineIds),
                completes,
              );
            },
          );

          test(
            'disruptionByModeByPathModes',
            () async {
              await expectLater(
                api.line.disruptionByModeByPathModes(lineModes),
                completes,
              );
            },
          );

          test(
            'arrivalsWithStopPointByPathIdsPathStopPointIdQueryDirectionQueryDestina',
            () async {
              await expectLater(
                api.line
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
                api.line.arrivalsByPathIds(lineIds),
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
                api.mode.getActiveServiceTypes(),
                completes,
              );
            },
          );

          test(
            'arrivals',
            () async {
              await expectLater(
                api.mode.arrivals(modeMode),
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
                api.occupancy.get(),
                completes,
              );
            },
          );

          test(
            'getAllChargeConnectorStatus',
            () async {
              await expectLater(
                api.occupancy.getAllChargeConnectorStatus(),
                completes,
              );
            },
          );

          test(
            'getByPathId',
            () async {
              await expectLater(
                api.occupancy.getByPathId(occupancyCarParkId),
                completes,
              );
            },
          );

          test(
            'getChargeConnectorStatusByPathIds',
            () async {
              await expectLater(
                api.occupancy.getChargeConnectorStatusByPathIds(
                    occupancyChargeConnectorIds),
                completes,
              );
            },
          );

          test(
            'getBikePointsOccupanciesByPathIds',
            () async {
              await expectLater(
                api.occupancy
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
                api.place.metaCategories(),
                completes,
              );
            },
          );

          test(
            'metaPlaceTypes',
            () async {
              await expectLater(
                api.place.metaPlaceTypes(),
                completes,
              );
            },
          );

          test(
            'getByTypeByPathTypesQueryActiveOnly',
            () async {
              await expectLater(
                api.place.getByTypeByPathTypesQueryActiveOnly(placeTypes),
                completes,
              );
            },
          );

          test(
            'getByPathIdQueryIncludeChildren',
            () async {
              await expectLater(
                api.place.getByPathIdQueryIncludeChildren(placeId),
                completes,
              );
            },
          );

          test(
            'getByGeoPointByQueryLatQueryLonQueryRadiusQueryCategoriesQueryIncludeC',
            () async {
              await expectLater(
                api.place
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
                api.place.getAtByPathTypePathLatPathLon(
                    placeType, placeLat, placeLon),
                completes,
              );
            },
          );

          test(
            'searchByQueryNameQueryTypes',
            () async {
              await expectLater(
                api.place.searchByQueryNameQueryTypes(placeName),
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
                api.road.get(),
                completes,
              );
            },
          );

          test(
            'getByPathIds',
            () async {
              await expectLater(
                api.road.getByPathIds(roadIds),
                completes,
              );
            },
          );

          test(
            'statusByPathIdsQueryStartDateQueryEndDate',
            () async {
              await expectLater(
                api.road.statusByPathIdsQueryStartDateQueryEndDate(roadIds),
                completes,
              );
            },
          );

          test(
            'disruptionByPathIdsQueryStripContentQuerySeveritiesQueryCategoriesQuery',
            () async {
              await expectLater(
                api.road
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
                api.road.disruptedStreetsByQueryStartDateQueryEndDate(
                    DateTime.now(), DateTime.now().add(Duration(days: 1))),
                completes,
              );
            },
          );

          test(
            'disruptionByIdByPathDisruptionIdsQueryStripContent',
            () async {
              await expectLater(
                api.road.disruptionByIdByPathDisruptionIdsQueryStripContent(
                    roadDisruptionIds),
                completes,
              );
            },
          );

          test(
            'metaCategories',
            () async {
              await expectLater(
                api.road.metaCategories(),
                completes,
              );
            },
          );

          test(
            'metaSeverities',
            () async {
              await expectLater(
                api.road.metaSeverities(),
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
                api.search.getByQueryQuery(searchSiteQuery),
                completes,
              );
            },
          );

          test(
            'busSchedulesByQueryQuery',
            () async {
              await expectLater(
                api.search.busSchedulesByQueryQuery(searchBusSchedulesQuery),
                completes,
              );
            },
          );

          test(
            'metaSearchProviders',
            () async {
              await expectLater(
                api.search.metaSearchProviders(),
                completes,
              );
            },
          );

          test(
            'metaCategories',
            () async {
              await expectLater(
                api.search.metaCategories(),
                completes,
              );
            },
          );

          test(
            'metaSorts',
            () async {
              await expectLater(
                api.search.metaSorts(),
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
                api.stopPoint.metaCategories(),
                completes,
              );
            },
          );

          test(
            'metaStopTypes',
            () async {
              await expectLater(
                api.stopPoint.metaStopTypes(),
                completes,
              );
            },
          );

          test(
            'metaModes',
            () async {
              await expectLater(
                api.stopPoint.metaModes(),
                completes,
              );
            },
          );

          test(
            'getByPathIdsQueryIncludeCrowdingData',
            () async {
              await expectLater(
                api.stopPoint
                    .getByPathIdsQueryIncludeCrowdingData(stopPointIds),
                completes,
              );
            },
          );

          test(
            'getByPathIdQueryPlaceTypes',
            () async {
              await expectLater(
                api.stopPoint
                    .getByPathIdQueryPlaceTypes(stopPointId, stopPointTypes),
                completes,
              );
            },
          );

          test(
            'crowdingByPathIdPathLineQueryDirection',
            () async {
              await expectLater(
                api.stopPoint.crowdingByPathIdPathLineQueryDirection(
                    stopPointId, stopPointLineId, stopPointDirection),
                completes,
              );
            },
          );

          test(
            'getByTypeByPathTypes',
            () async {
              await expectLater(
                api.stopPoint.getByTypeByPathTypes(stopPointTypes),
                completes,
              );
            },
          );

          test(
            'getByTypeWithPaginationByPathTypesPathPage',
            () async {
              await expectLater(
                api.stopPoint.getByTypeWithPaginationByPathTypesPathPage(
                    stopPointTypes, stopPointPage),
                completes,
              );
            },
          );

          test(
            'getServiceTypesByQueryIdQueryLineIdsQueryModes',
            () async {
              await expectLater(
                api.stopPoint.getServiceTypesByQueryIdQueryLineIdsQueryModes(
                    stopPointId),
                completes,
              );
            },
          );

          test(
            'arrivalsByPathId',
            () async {
              await expectLater(
                api.stopPoint.arrivalsByPathId(stopPointId),
                completes,
              );
            },
          );

          test(
            'arrivalDeparturesByPathIdQueryLineIds',
            () async {
              await expectLater(
                api.stopPoint.arrivalDeparturesByPathIdQueryLineIds(
                    '910GHROW', ['london-overground']),
                completes,
              );
            },
          );

          test(
            'reachableFromByPathIdPathLineIdQueryServiceTypes',
            () async {
              await expectLater(
                api.stopPoint.reachableFromByPathIdPathLineIdQueryServiceTypes(
                    stopPointId, stopPointLineId),
                completes,
              );
            },
          );

          test(
            'routeByPathIdQueryServiceTypes',
            () async {
              await expectLater(
                api.stopPoint.routeByPathIdQueryServiceTypes(stopPointId),
                completes,
              );
            },
          );

          test(
            'disruptionByModeByPathModesQueryIncludeRouteBlockedStops',
            () async {
              await expectLater(
                api.stopPoint
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
                api.stopPoint
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
                api.stopPoint.directionByPathIdPathToStopPointIdQueryLineId(
                    stopPointId, stopPointToStopPointId),
                completes,
              );
            },
          );

          test(
            'getByGeoPointByQueryLatQueryLonQueryStopTypesQueryRadiusQueryUseSt',
            () async {
              await expectLater(
                api.stopPoint
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
                api.stopPoint.getByModeByPathModesQueryPage(stopPointModes),
                completes,
              );
            },
          );

          test(
            'searchByPathQueryQueryModesQueryFaresOnlyQueryMaxResultsQueryLines',
            () async {
              await expectLater(
                api.stopPoint
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
                api.stopPoint
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
                api.stopPoint.getBySmsByPathIdQueryOutput(stopPointSmsCode),
                completes,
              );
            },
          );

          test(
            'getTaxiRanksByIdsByPathStopPointId',
            () async {
              await expectLater(
                api.stopPoint.getTaxiRanksByIdsByPathStopPointId(stopPointId),
                completes,
              );
            },
          );

          test(
            'getCarParksByIdByPathStopPointId',
            () async {
              await expectLater(
                api.stopPoint.getCarParksByIdByPathStopPointId(stopPointId),
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
                api.vehicle.getByPathIds(vehicleIds),
                completes,
              );
            },
          );

          test(
            'getEmissionsSurchargeComplianceByQueryVrm',
            () async {
              await expectLater(
                api.vehicle
                    .getEmissionsSurchargeComplianceByQueryVrm(vehicleVrm),
                completes,
              );
            },
          );

          test(
            'getUlezComplianceByQueryVrm',
            () async {
              await expectLater(
                api.vehicle.getUlezComplianceByQueryVrm(vehicleVrm),
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
