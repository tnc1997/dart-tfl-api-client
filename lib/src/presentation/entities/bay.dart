class Bay {
  String bayType;

  int bayCount;

  int free;

  int occupied;

  Bay();

  @override
  String toString() {
    return 'Bay[bayType=$bayType, bayCount=$bayCount, free=$free, occupied=$occupied, ]';
  }

  Bay.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    bayType = json['bayType'];
    bayCount = json['bayCount'];
    free = json['free'];
    occupied = json['occupied'];
  }

  Map<String, dynamic> toJson() {
    return {
      'bayType': bayType,
      'bayCount': bayCount,
      'free': free,
      'occupied': occupied
    };
  }

  static List<Bay> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Bay>()
        : json.map((value) => Bay.fromJson(value)).toList();
  }

  static Map<String, Bay> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = Map<String, Bay>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = Bay.fromJson(value));
    }
    return map;
  }
}
