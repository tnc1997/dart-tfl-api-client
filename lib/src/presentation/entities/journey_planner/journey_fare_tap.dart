import './journey_fare_tap_details.dart';
import '../../../internal/serializable.dart';

class JourneyFareTap implements Serializable {
  String atcoCode;

  JourneyFareTapDetails tapDetails;

  JourneyFareTap({
    this.atcoCode,
    this.tapDetails,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'atcoCode': atcoCode,
      'tapDetails': tapDetails,
    };
  }

  @override
  String toString() {
    return 'FareTap[atcoCode=$atcoCode, tapDetails=$tapDetails, ]';
  }

  JourneyFareTap.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    atcoCode = json['atcoCode'];
    tapDetails = JourneyFareTapDetails.fromJson(json['tapDetails']);
  }

  static List<JourneyFareTap> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<JourneyFareTap>()
        : json.map((value) => JourneyFareTap.fromJson(value)).toList();
  }

  static Map<String, JourneyFareTap> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, JourneyFareTap>()
        : json
            .map((key, value) => MapEntry(key, JourneyFareTap.fromJson(value)));
  }
}
