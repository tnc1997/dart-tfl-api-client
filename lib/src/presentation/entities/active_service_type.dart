class ActiveServiceType {
  String mode;

  String serviceType;

  ActiveServiceType();

  @override
  String toString() {
    return 'ActiveServiceType[mode=$mode, serviceType=$serviceType, ]';
  }

  ActiveServiceType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    mode = json['mode'];
    serviceType = json['serviceType'];
  }

  Map<String, dynamic> toJson() {
    return {'mode': mode, 'serviceType': serviceType};
  }

  static List<ActiveServiceType> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ActiveServiceType>()
        : json.map((value) => new ActiveServiceType.fromJson(value)).toList();
  }

  static Map<String, ActiveServiceType> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ActiveServiceType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ActiveServiceType.fromJson(value));
    }
    return map;
  }
}
