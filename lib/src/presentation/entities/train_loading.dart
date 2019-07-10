import '../../internal/serializable.dart';

class TrainLoading implements Serializable {
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

  TrainLoading({
    this.line,
    this.lineDirection,
    this.platformDirection,
    this.direction,
    this.naptanTo,
    this.timeSlice,
    this.value,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'line': line,
      'lineDirection': lineDirection,
      'platformDirection': platformDirection,
      'direction': direction,
      'naptanTo': naptanTo,
      'timeSlice': timeSlice,
      'value': value,
    };
  }

  @override
  String toString() {
    return 'TrainLoading[line=$line, lineDirection=$lineDirection, platformDirection=$platformDirection, direction=$direction, naptanTo=$naptanTo, timeSlice=$timeSlice, value=$value]';
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

  static List<TrainLoading> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<TrainLoading>()
        : json.map((value) => TrainLoading.fromJson(value)).toList();
  }

  static Map<String, TrainLoading> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, TrainLoading>()
        : json.map((key, value) => MapEntry(key, TrainLoading.fromJson(value)));
  }
}
