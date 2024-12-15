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
  ) {
    return ZoneStatistic(
      populationYear: (json['populationYear'] as num?)?.toInt(),
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

  Map<String, dynamic> toJson() {
    return {
      'populationYear': populationYear,
      'jobs': jobs,
      'totalPopulation': totalPopulation,
      'houseHolds': houseHolds,
      'over75Population': over75Population,
      'economicallyActivePopulation': economicallyActivePopulation,
      'workingAgePopulation': workingAgePopulation,
      'pensionerPopulation': pensionerPopulation,
      'allTownCentres': allTownCentres,
      'catchmentOutsideLondonIncluded': catchmentOutsideLondonIncluded,
      'metropolitanMajorTownCentres': metropolitanMajorTownCentres,
      'metropolitanTownCentres': metropolitanTownCentres,
      'primaryEducation': primaryEducation,
      'secondaryEducation': secondaryEducation,
      'furtherEducation': furtherEducation,
      'generalPractice': generalPractice,
      'pharmacies': pharmacies,
      'accidentEmergency': accidentEmergency,
    };
  }
}
