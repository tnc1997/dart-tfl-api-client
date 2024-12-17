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
      operatorId: (json['operatorId'] as num?)?.toInt(),
      organisationName: json['organisationName'] as String?,
      tradingName: json['tradingName'] as String?,
      alsoKnownAs: (json['alsoKnownAs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      centreId: (json['centreId'] as num?)?.toInt(),
      addressLine1: json['addressLine1'] as String?,
      addressLine2: json['addressLine2'] as String?,
      addressLine3: json['addressLine3'] as String?,
      town: json['town'] as String?,
      county: json['county'] as String?,
      postcode: json['postcode'] as String?,
      bookingsPhoneNumber: json['bookingsPhoneNumber'] as String?,
      bookingsEmail: json['bookingsEmail'] as String?,
      publicAccess: json['publicAccess'] as bool?,
      publicWaitingRoom: json['publicWaitingRoom'] as bool?,
      wheelchairAccessible: json['wheelchairAccessible'] as bool?,
      creditDebitCard: json['creditDebitCard'] as bool?,
      chequeBankersCard: json['chequeBankersCard'] as bool?,
      accountServicesAvailable: json['accountServicesAvailable'] as bool?,
      hoursOfOperation24X7: json['hoursOfOperation24X7'] as bool?,
      hoursOfOperationMonThu: json['hoursOfOperationMonThu'] as bool?,
      startTimeMonThu: json['startTimeMonThu'] as String?,
      endTimeMonThu: json['endTimeMonThu'] as String?,
      hoursOfOperationFri: json['hoursOfOperationFri'] as bool?,
      startTimeFri: json['startTimeFri'] as String?,
      endTimeFri: json['endTimeFri'] as String?,
      hoursOfOperationSat: json['hoursOfOperationSat'] as bool?,
      startTimeSat: json['startTimeSat'] as String?,
      endTimeSat: json['endTimeSat'] as String?,
      hoursOfOperationSun: json['hoursOfOperationSun'] as bool?,
      startTimeSun: json['startTimeSun'] as String?,
      endTimeSun: json['endTimeSun'] as String?,
      hoursOfOperationPubHol: json['hoursOfOperationPubHol'] as bool?,
      startTimePubHol: json['startTimePubHol'] as String?,
      endTimePubHol: json['endTimePubHol'] as String?,
      numberOfVehicles: (json['numberOfVehicles'] as num?)?.toInt(),
      numberOfVehiclesWheelchair:
          (json['numberOfVehiclesWheelchair'] as num?)?.toInt(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      operatorTypes: (json['operatorTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      distance: (json['distance'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'operatorId': operatorId,
      'organisationName': organisationName,
      'tradingName': tradingName,
      'alsoKnownAs': alsoKnownAs,
      'centreId': centreId,
      'addressLine1': addressLine1,
      'addressLine2': addressLine2,
      'addressLine3': addressLine3,
      'town': town,
      'county': county,
      'postcode': postcode,
      'bookingsPhoneNumber': bookingsPhoneNumber,
      'bookingsEmail': bookingsEmail,
      'publicAccess': publicAccess,
      'publicWaitingRoom': publicWaitingRoom,
      'wheelchairAccessible': wheelchairAccessible,
      'creditDebitCard': creditDebitCard,
      'chequeBankersCard': chequeBankersCard,
      'accountServicesAvailable': accountServicesAvailable,
      'hoursOfOperation24X7': hoursOfOperation24X7,
      'hoursOfOperationMonThu': hoursOfOperationMonThu,
      'startTimeMonThu': startTimeMonThu,
      'endTimeMonThu': endTimeMonThu,
      'hoursOfOperationFri': hoursOfOperationFri,
      'startTimeFri': startTimeFri,
      'endTimeFri': endTimeFri,
      'hoursOfOperationSat': hoursOfOperationSat,
      'startTimeSat': startTimeSat,
      'endTimeSat': endTimeSat,
      'hoursOfOperationSun': hoursOfOperationSun,
      'startTimeSun': startTimeSun,
      'endTimeSun': endTimeSun,
      'hoursOfOperationPubHol': hoursOfOperationPubHol,
      'startTimePubHol': startTimePubHol,
      'endTimePubHol': endTimePubHol,
      'numberOfVehicles': numberOfVehicles,
      'numberOfVehiclesWheelchair': numberOfVehiclesWheelchair,
      'longitude': longitude,
      'latitude': latitude,
      'operatorTypes': operatorTypes,
      'distance': distance,
    };
  }
}
