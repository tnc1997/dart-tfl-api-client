// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_hire_operator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrivateHireOperator _$PrivateHireOperatorFromJson(Map<String, dynamic> json) {
  return PrivateHireOperator(
      operatorId: json['operatorId'] as int,
      organisationName: json['organisationName'] as String,
      tradingName: json['tradingName'] as String,
      alsoKnownAs:
          (json['alsoKnownAs'] as List)?.map((e) => e as String)?.toList(),
      centreId: json['centreId'] as int,
      addressLine1: json['addressLine1'] as String,
      addressLine2: json['addressLine2'] as String,
      addressLine3: json['addressLine3'] as String,
      town: json['town'] as String,
      county: json['county'] as String,
      postcode: json['postcode'] as String,
      bookingsPhoneNumber: json['bookingsPhoneNumber'] as String,
      bookingsEmail: json['bookingsEmail'] as String,
      publicAccess: json['publicAccess'] as bool,
      publicWaitingRoom: json['publicWaitingRoom'] as bool,
      wheelchairAccessible: json['wheelchairAccessible'] as bool,
      creditDebitCard: json['creditDebitCard'] as bool,
      chequeBankersCard: json['chequeBankersCard'] as bool,
      accountServicesAvailable: json['accountServicesAvailable'] as bool,
      hoursOfOperation24X7: json['hoursOfOperation24X7'] as bool,
      hoursOfOperationMonThu: json['hoursOfOperationMonThu'] as bool,
      startTimeMonThu: json['startTimeMonThu'] as String,
      endTimeMonThu: json['endTimeMonThu'] as String,
      hoursOfOperationFri: json['hoursOfOperationFri'] as bool,
      startTimeFri: json['startTimeFri'] as String,
      endTimeFri: json['endTimeFri'] as String,
      hoursOfOperationSat: json['hoursOfOperationSat'] as bool,
      startTimeSat: json['startTimeSat'] as String,
      endTimeSat: json['endTimeSat'] as String,
      hoursOfOperationSun: json['hoursOfOperationSun'] as bool,
      startTimeSun: json['startTimeSun'] as String,
      endTimeSun: json['endTimeSun'] as String,
      hoursOfOperationPubHol: json['hoursOfOperationPubHol'] as bool,
      startTimePubHol: json['startTimePubHol'] as String,
      endTimePubHol: json['endTimePubHol'] as String,
      numberOfVehicles: json['numberOfVehicles'] as int,
      numberOfVehiclesWheelchair: json['numberOfVehiclesWheelchair'] as int,
      longitude: (json['longitude'] as num)?.toDouble(),
      latitude: (json['latitude'] as num)?.toDouble(),
      operatorTypes:
          (json['operatorTypes'] as List)?.map((e) => e as String)?.toList(),
      distance: json['distance'] as int);
}

Map<String, dynamic> _$PrivateHireOperatorToJson(
        PrivateHireOperator instance) =>
    <String, dynamic>{
      'operatorId': instance.operatorId,
      'organisationName': instance.organisationName,
      'tradingName': instance.tradingName,
      'alsoKnownAs': instance.alsoKnownAs,
      'centreId': instance.centreId,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'addressLine3': instance.addressLine3,
      'town': instance.town,
      'county': instance.county,
      'postcode': instance.postcode,
      'bookingsPhoneNumber': instance.bookingsPhoneNumber,
      'bookingsEmail': instance.bookingsEmail,
      'publicAccess': instance.publicAccess,
      'publicWaitingRoom': instance.publicWaitingRoom,
      'wheelchairAccessible': instance.wheelchairAccessible,
      'creditDebitCard': instance.creditDebitCard,
      'chequeBankersCard': instance.chequeBankersCard,
      'accountServicesAvailable': instance.accountServicesAvailable,
      'hoursOfOperation24X7': instance.hoursOfOperation24X7,
      'hoursOfOperationMonThu': instance.hoursOfOperationMonThu,
      'startTimeMonThu': instance.startTimeMonThu,
      'endTimeMonThu': instance.endTimeMonThu,
      'hoursOfOperationFri': instance.hoursOfOperationFri,
      'startTimeFri': instance.startTimeFri,
      'endTimeFri': instance.endTimeFri,
      'hoursOfOperationSat': instance.hoursOfOperationSat,
      'startTimeSat': instance.startTimeSat,
      'endTimeSat': instance.endTimeSat,
      'hoursOfOperationSun': instance.hoursOfOperationSun,
      'startTimeSun': instance.startTimeSun,
      'endTimeSun': instance.endTimeSun,
      'hoursOfOperationPubHol': instance.hoursOfOperationPubHol,
      'startTimePubHol': instance.startTimePubHol,
      'endTimePubHol': instance.endTimePubHol,
      'numberOfVehicles': instance.numberOfVehicles,
      'numberOfVehiclesWheelchair': instance.numberOfVehiclesWheelchair,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'operatorTypes': instance.operatorTypes,
      'distance': instance.distance
    };
