import 'package:json_annotation/json_annotation.dart';

part 'operator.g.dart';

@JsonSerializable()
class Operator {
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

  Operator({
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

  factory Operator.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OperatorFromJson(json);

  static List<Operator> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Operator.fromJson(value),
          )
          .toList();

  static Map<String, Operator> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Operator.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$OperatorToJson(this);
}
