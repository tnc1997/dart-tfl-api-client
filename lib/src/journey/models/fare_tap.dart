import 'fare_tap_details.dart';

class FareTap {
  String? atcoCode;
  FareTapDetails? tapDetails;

  FareTap({
    this.atcoCode,
    this.tapDetails,
  });

  factory FareTap.fromJson(
    Map<String, dynamic> json,
  ) {
    return FareTap(
      atcoCode: json['atcoCode'] as String?,
      tapDetails: json['tapDetails'] == null
          ? null
          : FareTapDetails.fromJson(json['tapDetails'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'atcoCode': atcoCode,
      'tapDetails': tapDetails,
    };
  }
}
