import '../../internal/serializable.dart';

class PassengerFlow implements Serializable {
  /// The time in 24hr format with 15 minute intervals e.g. 0500-0515, 0515-0530 etc.
  String timeSlice;

  /// The count of passenger flow towards a platform.
  int value;

  PassengerFlow({
    this.timeSlice,
    this.value,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'timeSlice': timeSlice,
      'value': value,
    };
  }

  @override
  String toString() {
    return 'PassengerFlow[timeSlice=$timeSlice, value=$value, ]';
  }

  PassengerFlow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    timeSlice = json['timeSlice'];
    value = json['value'];
  }

  static List<PassengerFlow> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<PassengerFlow>()
        : json.map((value) => PassengerFlow.fromJson(value)).toList();
  }

  static Map<String, PassengerFlow> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, PassengerFlow>()
        : json
            .map((key, value) => MapEntry(key, PassengerFlow.fromJson(value)));
  }
}
