﻿class FareTapDetails {
  String? modeType;
  String? validationType;
  String? hostDeviceType;
  String? busRouteId;
  int? nationalLocationCode;
  DateTime? tapTimestamp;

  FareTapDetails({
    this.modeType,
    this.validationType,
    this.hostDeviceType,
    this.busRouteId,
    this.nationalLocationCode,
    this.tapTimestamp,
  });

  factory FareTapDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    return FareTapDetails(
      modeType: json['modeType'] as String?,
      validationType: json['validationType'] as String?,
      hostDeviceType: json['hostDeviceType'] as String?,
      busRouteId: json['busRouteId'] as String?,
      nationalLocationCode: (json['nationalLocationCode'] as num?)?.toInt(),
      tapTimestamp: json['tapTimestamp'] == null
          ? null
          : DateTime.parse(json['tapTimestamp'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'modeType': modeType,
      'validationType': validationType,
      'hostDeviceType': hostDeviceType,
      'busRouteId': busRouteId,
      'nationalLocationCode': nationalLocationCode,
      'tapTimestamp': tapTimestamp?.toIso8601String(),
    };
  }
}
