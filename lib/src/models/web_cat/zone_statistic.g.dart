// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zone_statistic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ZoneStatistic _$ZoneStatisticFromJson(Map<String, dynamic> json) {
  return ZoneStatistic(
    populationYear: json['populationYear'] as int?,
    jobs: (json['jobs'] as num?)?.toDouble(),
    totalPopulation: (json['totalPopulation'] as num?)?.toDouble(),
    houseHolds: (json['houseHolds'] as num?)?.toDouble(),
    over75Population: (json['over75Population'] as num?)?.toDouble(),
    economicallyActivePopulation:
        (json['economicallyActivePopulation'] as num?)?.toDouble(),
    workingAgePopulation: (json['workingAgePopulation'] as num?)?.toDouble(),
    pensionerPopulation: (json['pensionerPopulation'] as num?)?.toDouble(),
    allTownCentres: (json['allTownCentres'] as num?)?.toDouble(),
    catchmentOutsideLondonIncluded:
        json['catchmentOutsideLondonIncluded'] as bool?,
    metropolitanMajorTownCentres:
        (json['metropolitanMajorTownCentres'] as num?)?.toDouble(),
    metropolitanTownCentres:
        (json['metropolitanTownCentres'] as num?)?.toDouble(),
    primaryEducation: (json['primaryEducation'] as num?)?.toDouble(),
    secondaryEducation: (json['secondaryEducation'] as num?)?.toDouble(),
    furtherEducation: (json['furtherEducation'] as num?)?.toDouble(),
    generalPractice: (json['generalPractice'] as num?)?.toDouble(),
    pharmacies: (json['pharmacies'] as num?)?.toDouble(),
    accidentEmergency: (json['accidentEmergency'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$ZoneStatisticToJson(ZoneStatistic instance) =>
    <String, dynamic>{
      'populationYear': instance.populationYear,
      'jobs': instance.jobs,
      'totalPopulation': instance.totalPopulation,
      'houseHolds': instance.houseHolds,
      'over75Population': instance.over75Population,
      'economicallyActivePopulation': instance.economicallyActivePopulation,
      'workingAgePopulation': instance.workingAgePopulation,
      'pensionerPopulation': instance.pensionerPopulation,
      'allTownCentres': instance.allTownCentres,
      'catchmentOutsideLondonIncluded': instance.catchmentOutsideLondonIncluded,
      'metropolitanMajorTownCentres': instance.metropolitanMajorTownCentres,
      'metropolitanTownCentres': instance.metropolitanTownCentres,
      'primaryEducation': instance.primaryEducation,
      'secondaryEducation': instance.secondaryEducation,
      'furtherEducation': instance.furtherEducation,
      'generalPractice': instance.generalPractice,
      'pharmacies': instance.pharmacies,
      'accidentEmergency': instance.accidentEmergency,
    };
