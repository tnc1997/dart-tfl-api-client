import '../../internal/serializable.dart';

class KnownJourney implements Serializable {
  String hour;

  String minute;

  int intervalId;

  KnownJourney({
    this.hour,
    this.minute,
    this.intervalId,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'hour': hour,
      'minute': minute,
      'intervalId': intervalId,
    };
  }

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

  static List<KnownJourney> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<KnownJourney>()
        : json.map((value) => KnownJourney.fromJson(value)).toList();
  }

  static Map<String, KnownJourney> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, KnownJourney>()
        : json.map((key, value) => MapEntry(key, KnownJourney.fromJson(value)));
  }
}
