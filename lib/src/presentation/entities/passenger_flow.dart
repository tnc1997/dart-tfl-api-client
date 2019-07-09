class PassengerFlow {
  /// The time in 24hr format with 15 minute intervals e.g. 0500-0515, 0515-0530 etc.
  String timeSlice;

  /// The count of passenger flow towards a platform.
  int value;

  PassengerFlow();

  @override
  String toString() {
    return 'PassengerFlow[timeSlice=$timeSlice, value=$value, ]';
  }

  PassengerFlow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    timeSlice = json['timeSlice'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {'timeSlice': timeSlice, 'value': value};
  }

  static List<PassengerFlow> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PassengerFlow>()
        : json.map((value) => new PassengerFlow.fromJson(value)).toList();
  }

  static Map<String, PassengerFlow> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PassengerFlow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PassengerFlow.fromJson(value));
    }
    return map;
  }
}
