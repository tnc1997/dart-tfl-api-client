class TwentyFourHourClockTime {
  String hour;

  String minute;

  TwentyFourHourClockTime();

  @override
  String toString() {
    return 'TwentyFourHourClockTime[hour=$hour, minute=$minute, ]';
  }

  TwentyFourHourClockTime.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hour = json['hour'];
    minute = json['minute'];
  }

  Map<String, dynamic> toJson() {
    return {'hour': hour, 'minute': minute};
  }

  static List<TwentyFourHourClockTime> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<TwentyFourHourClockTime>()
        : json
            .map((value) => new TwentyFourHourClockTime.fromJson(value))
            .toList();
  }

  static Map<String, TwentyFourHourClockTime> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TwentyFourHourClockTime>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new TwentyFourHourClockTime.fromJson(value));
    }
    return map;
  }
}
