class TrainLoading {
  /// The line name.
  String line;

  /// The direction of the line e.g. NB, SB etc.
  String lineDirection;

  /// The direction displayed on the platform e.g. NB, SB etc.
  String platformDirection;

  /// The direction in regards to the journey planner i.e. inbound or outbound.
  String direction;

  /// The NaPTAN of the adjacent station.
  String naptanTo;

  /// The time in 24hr format with 15 minute intervals e.g. 0500-0515, 0515-0530 etc.
  String timeSlice;

  /// The scale between 1-6. 1 = Very quiet. 2 = Quiet. 3 = Fairly busy. 4 = Busy. 5 = Very busy. 6 = Exceptionally busy.
  int value;

  TrainLoading();

  @override
  String toString() {
    return 'TrainLoading[line=$line, lineDirection=$lineDirection, platformDirection=$platformDirection, direction=$direction, naptanTo=$naptanTo, timeSlice=$timeSlice, value=$value, ]';
  }

  TrainLoading.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    line = json['line'];
    lineDirection = json['lineDirection'];
    platformDirection = json['platformDirection'];
    direction = json['direction'];
    naptanTo = json['naptanTo'];
    timeSlice = json['timeSlice'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {
      'line': line,
      'lineDirection': lineDirection,
      'platformDirection': platformDirection,
      'direction': direction,
      'naptanTo': naptanTo,
      'timeSlice': timeSlice,
      'value': value
    };
  }

  static List<TrainLoading> listFromJson(List<dynamic> json) {
    return json == null
        ? List<TrainLoading>()
        : json.map((value) => TrainLoading.fromJson(value)).toList();
  }

  static Map<String, TrainLoading> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, TrainLoading>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = TrainLoading.fromJson(value));
    }
    return map;
  }
}
