import 'package:json_annotation/json_annotation.dart';

part 'zone_statistic.g.dart';

@JsonSerializable()
class ZoneStatistic {
  int? populationYear;
  double? jobs;
  double? totalPopulation;
  double? houseHolds;
  double? over75Population;
  double? economicallyActivePopulation;
  double? workingAgePopulation;
  double? pensionerPopulation;
  double? allTownCentres;
  bool? catchmentOutsideLondonIncluded;
  double? metropolitanMajorTownCentres;
  double? metropolitanTownCentres;
  double? primaryEducation;
  double? secondaryEducation;
  double? furtherEducation;
  double? generalPractice;
  double? pharmacies;
  double? accidentEmergency;

  ZoneStatistic({
    this.populationYear,
    this.jobs,
    this.totalPopulation,
    this.houseHolds,
    this.over75Population,
    this.economicallyActivePopulation,
    this.workingAgePopulation,
    this.pensionerPopulation,
    this.allTownCentres,
    this.catchmentOutsideLondonIncluded,
    this.metropolitanMajorTownCentres,
    this.metropolitanTownCentres,
    this.primaryEducation,
    this.secondaryEducation,
    this.furtherEducation,
    this.generalPractice,
    this.pharmacies,
    this.accidentEmergency,
  });

  factory ZoneStatistic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ZoneStatisticFromJson(json);

  static List<ZoneStatistic> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ZoneStatistic.fromJson(value),
          )
          .toList();

  static Map<String, ZoneStatistic> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ZoneStatistic.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ZoneStatisticToJson(this);
}
