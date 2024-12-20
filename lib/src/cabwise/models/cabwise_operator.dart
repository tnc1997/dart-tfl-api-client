class CabwiseOperator {
  int? operatorId;
  String? organisationName;
  String? tradingName;
  List<String>? alsoKnownAs;
  int? centreId;
  String? addressLine1;
  String? addressLine2;
  String? addressLine3;
  String? town;
  String? county;
  String? postcode;
  String? bookingsPhoneNumber;
  String? bookingsEmail;
  bool? publicAccess;
  bool? publicWaitingRoom;
  bool? wheelchairAccessible;
  bool? creditDebitCard;
  bool? chequeBankersCard;
  bool? accountServicesAvailable;
  bool? hoursOfOperation24X7;
  bool? hoursOfOperationMonThu;
  String? startTimeMonThu;
  String? endTimeMonThu;
  bool? hoursOfOperationFri;
  String? startTimeFri;
  String? endTimeFri;
  bool? hoursOfOperationSat;
  String? startTimeSat;
  String? endTimeSat;
  bool? hoursOfOperationSun;
  String? startTimeSun;
  String? endTimeSun;
  bool? hoursOfOperationPubHol;
  String? startTimePubHol;
  String? endTimePubHol;
  int? numberOfVehicles;
  int? numberOfVehiclesWheelchair;
  double? longitude;
  double? latitude;
  List<String>? operatorTypes;
  double? distance;

  CabwiseOperator({
    this.operatorId,
    this.organisationName,
    this.tradingName,
    this.alsoKnownAs,
    this.centreId,
    this.addressLine1,
    this.addressLine2,
    this.addressLine3,
    this.town,
    this.county,
    this.postcode,
    this.bookingsPhoneNumber,
    this.bookingsEmail,
    this.publicAccess,
    this.publicWaitingRoom,
    this.wheelchairAccessible,
    this.creditDebitCard,
    this.chequeBankersCard,
    this.accountServicesAvailable,
    this.hoursOfOperation24X7,
    this.hoursOfOperationMonThu,
    this.startTimeMonThu,
    this.endTimeMonThu,
    this.hoursOfOperationFri,
    this.startTimeFri,
    this.endTimeFri,
    this.hoursOfOperationSat,
    this.startTimeSat,
    this.endTimeSat,
    this.hoursOfOperationSun,
    this.startTimeSun,
    this.endTimeSun,
    this.hoursOfOperationPubHol,
    this.startTimePubHol,
    this.endTimePubHol,
    this.numberOfVehicles,
    this.numberOfVehiclesWheelchair,
    this.longitude,
    this.latitude,
    this.operatorTypes,
    this.distance,
  });

  factory CabwiseOperator.fromJson(
    Map<String, dynamic> json,
  ) {
    return CabwiseOperator(
      operatorId: (json['OperatorId'] as num?)?.toInt(),
      organisationName: json['OrganisationName'] as String?,
      tradingName: json['TradingName'] as String?,
      alsoKnownAs: (json['AlsoKnownAs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      centreId: (json['CentreId'] as num?)?.toInt(),
      addressLine1: json['AddressLine1'] as String?,
      addressLine2: json['AddressLine2'] as String?,
      addressLine3: json['AddressLine3'] as String?,
      town: json['Town'] as String?,
      county: json['County'] as String?,
      postcode: json['Postcode'] as String?,
      bookingsPhoneNumber: json['BookingsPhoneNumber'] as String?,
      bookingsEmail: json['BookingsEmail'] as String?,
      publicAccess: json['PublicAccess'] as bool?,
      publicWaitingRoom: json['PublicWaitingRoom'] as bool?,
      wheelchairAccessible: json['WheelchairAccessible'] as bool?,
      creditDebitCard: json['CreditDebitCard'] as bool?,
      chequeBankersCard: json['ChequeBankersCard'] as bool?,
      accountServicesAvailable: json['AccountServicesAvailable'] as bool?,
      hoursOfOperation24X7: json['HoursOfOperation24X7'] as bool?,
      hoursOfOperationMonThu: json['HoursOfOperationMonThu'] as bool?,
      startTimeMonThu: json['StartTimeMonThu'] as String?,
      endTimeMonThu: json['EndTimeMonThu'] as String?,
      hoursOfOperationFri: json['HoursOfOperationFri'] as bool?,
      startTimeFri: json['StartTimeFri'] as String?,
      endTimeFri: json['EndTimeFri'] as String?,
      hoursOfOperationSat: json['HoursOfOperationSat'] as bool?,
      startTimeSat: json['StartTimeSat'] as String?,
      endTimeSat: json['EndTimeSat'] as String?,
      hoursOfOperationSun: json['HoursOfOperationSun'] as bool?,
      startTimeSun: json['StartTimeSun'] as String?,
      endTimeSun: json['EndTimeSun'] as String?,
      hoursOfOperationPubHol: json['HoursOfOperationPubHol'] as bool?,
      startTimePubHol: json['StartTimePubHol'] as String?,
      endTimePubHol: json['EndTimePubHol'] as String?,
      numberOfVehicles: (json['NumberOfVehicles'] as num?)?.toInt(),
      numberOfVehiclesWheelchair:
          (json['NumberOfVehiclesWheelchair'] as num?)?.toInt(),
      longitude: (json['Longitude'] as num?)?.toDouble(),
      latitude: (json['Latitude'] as num?)?.toDouble(),
      operatorTypes: (json['OperatorTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      distance: (json['Distance'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'OperatorId': operatorId,
      'OrganisationName': organisationName,
      'TradingName': tradingName,
      'AlsoKnownAs': alsoKnownAs,
      'CentreId': centreId,
      'AddressLine1': addressLine1,
      'AddressLine2': addressLine2,
      'AddressLine3': addressLine3,
      'Town': town,
      'County': county,
      'Postcode': postcode,
      'BookingsPhoneNumber': bookingsPhoneNumber,
      'BookingsEmail': bookingsEmail,
      'PublicAccess': publicAccess,
      'PublicWaitingRoom': publicWaitingRoom,
      'WheelchairAccessible': wheelchairAccessible,
      'CreditDebitCard': creditDebitCard,
      'ChequeBankersCard': chequeBankersCard,
      'AccountServicesAvailable': accountServicesAvailable,
      'HoursOfOperation24X7': hoursOfOperation24X7,
      'HoursOfOperationMonThu': hoursOfOperationMonThu,
      'StartTimeMonThu': startTimeMonThu,
      'EndTimeMonThu': endTimeMonThu,
      'HoursOfOperationFri': hoursOfOperationFri,
      'StartTimeFri': startTimeFri,
      'EndTimeFri': endTimeFri,
      'HoursOfOperationSat': hoursOfOperationSat,
      'StartTimeSat': startTimeSat,
      'EndTimeSat': endTimeSat,
      'HoursOfOperationSun': hoursOfOperationSun,
      'StartTimeSun': startTimeSun,
      'EndTimeSun': endTimeSun,
      'HoursOfOperationPubHol': hoursOfOperationPubHol,
      'StartTimePubHol': startTimePubHol,
      'EndTimePubHol': endTimePubHol,
      'NumberOfVehicles': numberOfVehicles,
      'NumberOfVehiclesWheelchair': numberOfVehiclesWheelchair,
      'Longitude': longitude,
      'Latitude': latitude,
      'OperatorTypes': operatorTypes,
      'Distance': distance,
    };
  }
}
