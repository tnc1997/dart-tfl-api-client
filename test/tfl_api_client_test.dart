import 'dart:io';

import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

void main() {
  group(
    'services',
    () {
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
                api.journey.journeyResults(journeyFrom, journeyTo),
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
                api.line.get(lineIds),
                completes,
              );
            },
          );

          test(
            'getByModeByPathModes',
            () async {
              await expectLater(
                api.line.getByMode(lineModes),
                completes,
              );
            },
          );

          test(
            'routeByQueryServiceTypes',
            () async {
              await expectLater(
                api.line.route(),
                completes,
              );
            },
          );

          test(
            'lineRoutesByIdsByPathIdsQueryServiceTypes',
            () async {
              await expectLater(
                api.line.lineRoutesByIds(lineIds),
                completes,
              );
            },
          );

          test(
            'routeByModeByPathModesQueryServiceTypes',
            () async {
              await expectLater(
                api.line.routeByMode(lineModes),
                completes,
              );
            },
          );

          test(
            'routeSequenceByPathIdPathDirectionQueryServiceTypesQueryExcludeCrowding',
            () async {
              await expectLater(
                api.line.routeSequence(lineId, lineDirection),
                completes,
              );
            },
          );

          test(
            'statusByPathIdsPathStartDatePathEndDateQueryDetail',
            () async {
              await expectLater(
                api.line.status(lineIds, DateTime.now(),
                    DateTime.now().add(Duration(days: 1))),
                completes,
              );
            },
          );

          test(
            'statusByIdsByPathIdsQueryDetail',
            () async {
              await expectLater(
                api.line.statusByIds(lineIds),
                completes,
              );
            },
          );

          test(
            'searchByPathQueryQueryModesQueryServiceTypes',
            () async {
              await expectLater(
                api.line.search(lineQuery),
                completes,
              );
            },
          );

          test(
            'statusBySeverityByPathSeverity',
            () async {
              await expectLater(
                api.line.statusBySeverity(lineSeverity),
                completes,
              );
            },
          );

          test(
            'statusByModeByPathModesQueryDetailQuerySeverityLevel',
            () async {
              await expectLater(
                api.line.statusByMode(lineModes),
                completes,
              );
            },
          );

          test(
            'stopPointsByPathIdQueryTflOperatedNationalRailStationsOnly',
            () async {
              await expectLater(
                api.line.stopPoints(lineId),
                completes,
              );
            },
          );

          test(
            'timetableByPathFromStopPointIdPathId',
            () async {
              await expectLater(
                api.line.timetable(lineFromStopPointId, lineId),
                completes,
              );
            },
          );

          test(
            'timetableToByPathFromStopPointIdPathIdPathToStopPointId',
            () async {
              await expectLater(
                api.line.timetableTo(
                    lineFromStopPointId, lineId, lineToStopPointId),
                completes,
              );
            },
          );

          test(
            'disruptionByPathIds',
            () async {
              await expectLater(
                api.line.disruption(lineIds),
                completes,
              );
            },
          );

          test(
            'disruptionByModeByPathModes',
            () async {
              await expectLater(
                api.line.disruptionByMode(lineModes),
                completes,
              );
            },
          );

          test(
            'arrivalsWithStopPointByPathIdsPathStopPointIdQueryDirectionQueryDestina',
            () async {
              await expectLater(
                api.line.arrivalsWithStopPoint(lineIds, lineStopPointId),
                completes,
              );
            },
          );

          test(
            'arrivalsByPathIds',
            () async {
              await expectLater(
                api.line.arrivals(lineIds),
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
                api.occupancy.getAll(),
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
                api.occupancy.get(occupancyCarParkId),
                completes,
              );
            },
          );

          test(
            'getChargeConnectorStatusByPathIds',
            () async {
              await expectLater(
                api.occupancy
                    .getChargeConnectorStatus(occupancyChargeConnectorIds),
                completes,
              );
            },
          );

          test(
            'getBikePointsOccupanciesByPathIds',
            () async {
              await expectLater(
                api.occupancy.getBikePointsOccupancies(occupancyBikePointIds),
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
                api.place.getByType(placeTypes),
                completes,
              );
            },
          );

          test(
            'getByPathIdQueryIncludeChildren',
            () async {
              await expectLater(
                api.place.get(placeId),
                completes,
              );
            },
          );

          test(
            'getByGeoPointByQueryLatQueryLonQueryRadiusQueryCategoriesQueryIncludeC',
            () async {
              await expectLater(
                api.place.getByGeoPoint(
                  placeLat,
                  placeLon,
                  radius: placeRadius,
                ),
                completes,
              );
            },
          );

          test(
            'getAtByPathTypePathLatPathLon',
            () async {
              await expectLater(
                api.place.getAt(placeType, placeLat, placeLon),
                completes,
              );
            },
          );

          test(
            'searchByQueryNameQueryTypes',
            () async {
              await expectLater(
                api.place.search(placeName),
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
                api.road.getAll(),
                completes,
              );
            },
          );

          test(
            'getByPathIds',
            () async {
              await expectLater(
                api.road.get(roadIds),
                completes,
              );
            },
          );

          test(
            'statusByPathIdsQueryStartDateQueryEndDate',
            () async {
              await expectLater(
                api.road.status(roadIds),
                completes,
              );
            },
          );

          test(
            'disruptionByPathIdsQueryStripContentQuerySeveritiesQueryCategoriesQuery',
            () async {
              await expectLater(
                api.road.disruption(roadIds),
                completes,
              );
            },
          );

          test(
            'disruptedStreetsByQueryStartDateQueryEndDate',
            () async {
              await expectLater(
                api.road.disruptedStreets(
                  startDate: DateTime.now(),
                  endDate: DateTime.now().add(Duration(days: 1)),
                ),
                completes,
              );
            },
          );

          test(
            'disruptionByIdByPathDisruptionIdsQueryStripContent',
            () async {
              await expectLater(
                api.road.disruptionById(roadDisruptionIds),
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
                api.search.get(searchSiteQuery),
                completes,
              );
            },
          );

          test(
            'busSchedulesByQueryQuery',
            () async {
              await expectLater(
                api.search.busSchedules(searchBusSchedulesQuery),
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
                api.stopPoint.get(stopPointIds),
                completes,
              );
            },
          );

          test(
            'getByPathIdQueryPlaceTypes',
            () async {
              await expectLater(
                api.stopPoint.getPlaceTypes(stopPointId, stopPointTypes),
                completes,
              );
            },
          );

          test(
            'crowdingByPathIdPathLineQueryDirection',
            () async {
              await expectLater(
                api.stopPoint
                    .crowding(stopPointId, stopPointLineId, stopPointDirection),
                completes,
              );
            },
          );

          test(
            'getByTypeByPathTypes',
            () async {
              await expectLater(
                api.stopPoint.getByType(stopPointTypes),
                completes,
              );
            },
          );

          test(
            'getByTypeWithPaginationByPathTypesPathPage',
            () async {
              await expectLater(
                api.stopPoint
                    .getByTypeWithPagination(stopPointTypes, stopPointPage),
                completes,
              );
            },
          );

          test(
            'getServiceTypesByQueryIdQueryLineIdsQueryModes',
            () async {
              await expectLater(
                api.stopPoint.getServiceTypes(stopPointId),
                completes,
              );
            },
          );

          test(
            'arrivalsByPathId',
            () async {
              await expectLater(
                api.stopPoint.arrivals(stopPointId),
                completes,
              );
            },
          );

          test(
            'arrivalDeparturesByPathIdQueryLineIds',
            () async {
              await expectLater(
                api.stopPoint
                    .arrivalDepartures('910GHROW', ['london-overground']),
                completes,
              );
            },
          );

          test(
            'reachableFromByPathIdPathLineIdQueryServiceTypes',
            () async {
              await expectLater(
                api.stopPoint.reachableFrom(stopPointId, stopPointLineId),
                completes,
              );
            },
          );

          test(
            'routeByPathIdQueryServiceTypes',
            () async {
              await expectLater(
                api.stopPoint.route(stopPointId),
                completes,
              );
            },
          );

          test(
            'disruptionByModeByPathModesQueryIncludeRouteBlockedStops',
            () async {
              await expectLater(
                api.stopPoint.disruptionByMode(stopPointModes),
                completes,
              );
            },
          );

          test(
            'disruptionByPathIdsQueryGetFamilyQueryIncludeRouteBlockedStopsQuer',
            () async {
              await expectLater(
                api.stopPoint.disruption(stopPointIds),
                completes,
              );
            },
          );

          test(
            'directionByPathIdPathToStopPointIdQueryLineId',
            () async {
              await expectLater(
                api.stopPoint.direction(stopPointId, stopPointToStopPointId),
                completes,
              );
            },
          );

          test(
            'getByGeoPointByQueryLatQueryLonQueryStopTypesQueryRadiusQueryUseSt',
            () async {
              await expectLater(
                api.stopPoint.getByGeoPoint(
                  stopPointTypes,
                  stopPointLat,
                  stopPointLon,
                  radius: stopPointRadius,
                ),
                completes,
              );
            },
          );

          test(
            'getByModeByPathModesQueryPage',
            () async {
              await expectLater(
                api.stopPoint.getByMode(stopPointModes),
                completes,
              );
            },
          );

          test(
            'searchByPathQueryQueryModesQueryFaresOnlyQueryMaxResultsQueryLines',
            () async {
              await expectLater(
                api.stopPoint.search(stopPointQuery),
                completes,
              );
            },
          );

          test(
            'getBySmsByPathIdQueryOutput',
            () async {
              await expectLater(
                api.stopPoint.getBySms(stopPointSmsCode),
                completes,
              );
            },
          );

          test(
            'getTaxiRanksByIdsByPathStopPointId',
            () async {
              await expectLater(
                api.stopPoint.getTaxiRanksById(stopPointId),
                completes,
              );
            },
          );

          test(
            'getCarParksByIdByPathStopPointId',
            () async {
              await expectLater(
                api.stopPoint.getCarParksById(stopPointId),
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
                api.vehicle.get(vehicleIds),
                completes,
              );
            },
          );

          test(
            'getEmissionsSurchargeComplianceByQueryVrm',
            () async {
              await expectLater(
                api.vehicle.getEmissionsSurchargeCompliance(vehicleVrm),
                completes,
              );
            },
          );

          test(
            'getUlezComplianceByQueryVrm',
            () async {
              await expectLater(
                api.vehicle.getUlezCompliance(vehicleVrm),
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
