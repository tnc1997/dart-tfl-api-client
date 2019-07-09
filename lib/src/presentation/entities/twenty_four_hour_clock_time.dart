import '../../internal/serializable.dart';

class TwentyFourHourClockTime implements Serializable {
  String hour;

  String minute;

  TwentyFourHourClockTime({
    this.hour,
    this.minute,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'hour': hour,
      'minute': minute,
    };
  }

  @override
  String toString() {
    return 'TwentyFourHourClockTime[hour=$hour, minute=$minute, ]';
  }

  TwentyFourHourClockTime.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    hour = json['hour'];
    minute = json['minute'];
  }

  static List<TwentyFourHourClockTime> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<TwentyFourHourClockTime>()
        : json.map((value) => TwentyFourHourClockTime.fromJson(value)).toList();
  }

  static Map<String, TwentyFourHourClockTime> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, TwentyFourHourClockTime>()
        : json.map((key, value) =>
            MapEntry(key, TwentyFourHourClockTime.fromJson(value)));
  }
}
