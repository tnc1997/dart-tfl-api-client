class KnownJourney {
  String hour;

  String minute;

  int intervalId;

  KnownJourney();

  @override
  String toString() {
    return 'KnownJourney[hour=$hour, minute=$minute, intervalId=$intervalId, ]';
  }

  KnownJourney.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hour = json['hour'];
    minute = json['minute'];
    intervalId = json['intervalId'];
  }

  Map<String, dynamic> toJson() {
    return {'hour': hour, 'minute': minute, 'intervalId': intervalId};
  }

  static List<KnownJourney> listFromJson(List<dynamic> json) {
    return json == null
        ? List<KnownJourney>()
        : json.map((value) => KnownJourney.fromJson(value)).toList();
  }

  static Map<String, KnownJourney> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, KnownJourney>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = KnownJourney.fromJson(value));
    }
    return map;
  }
}
