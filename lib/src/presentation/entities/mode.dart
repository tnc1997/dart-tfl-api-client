import '../../internal/serializable.dart';

class Mode implements Serializable {
  bool isTflService;

  bool isFarePaying;

  bool isScheduledService;

  String modeName;

  Mode({
    this.isTflService,
    this.isFarePaying,
    this.isScheduledService,
    this.modeName,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'isTflService': isTflService,
      'isFarePaying': isFarePaying,
      'isScheduledService': isScheduledService,
      'modeName': modeName,
    };
  }

  @override
  String toString() {
    return 'Mode[isTflService=$isTflService, isFarePaying=$isFarePaying, isScheduledService=$isScheduledService, modeName=$modeName]';
  }

  Mode.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    isTflService = json['isTflService'];
    isFarePaying = json['isFarePaying'];
    isScheduledService = json['isScheduledService'];
    modeName = json['modeName'];
  }

  static List<Mode> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Mode>()
        : json.map((value) => Mode.fromJson(value)).toList();
  }

  static Map<String, Mode> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Mode>()
        : json.map((key, value) => MapEntry(key, Mode.fromJson(value)));
  }
}
