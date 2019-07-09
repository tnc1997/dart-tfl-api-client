class Mode {
  bool isTflService;

  bool isFarePaying;

  bool isScheduledService;

  String modeName;

  Mode();

  @override
  String toString() {
    return 'Mode[isTflService=$isTflService, isFarePaying=$isFarePaying, isScheduledService=$isScheduledService, modeName=$modeName, ]';
  }

  Mode.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    isTflService = json['isTflService'];
    isFarePaying = json['isFarePaying'];
    isScheduledService = json['isScheduledService'];
    modeName = json['modeName'];
  }

  Map<String, dynamic> toJson() {
    return {
      'isTflService': isTflService,
      'isFarePaying': isFarePaying,
      'isScheduledService': isScheduledService,
      'modeName': modeName
    };
  }

  static List<Mode> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Mode>()
        : json.map((value) => new Mode.fromJson(value)).toList();
  }

  static Map<String, Mode> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Mode>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Mode.fromJson(value));
    }
    return map;
  }
}
