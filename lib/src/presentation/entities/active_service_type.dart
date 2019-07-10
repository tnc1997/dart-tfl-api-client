import '../../internal/serializable.dart';

class ActiveServiceType implements Serializable {
  String mode;

  String serviceType;

  ActiveServiceType({
    this.mode,
    this.serviceType,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'mode': mode,
      'serviceType': serviceType,
    };
  }

  @override
  String toString() {
    return 'ActiveServiceType[mode=$mode, serviceType=$serviceType]';
  }

  ActiveServiceType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    mode = json['mode'];
    serviceType = json['serviceType'];
  }

  static List<ActiveServiceType> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<ActiveServiceType>()
        : json.map((value) => ActiveServiceType.fromJson(value)).toList();
  }

  static Map<String, ActiveServiceType> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, ActiveServiceType>()
        : json.map(
            (key, value) => MapEntry(key, ActiveServiceType.fromJson(value)));
  }
}
