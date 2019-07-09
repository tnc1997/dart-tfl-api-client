class MatchedRoute {
  /// The route code.
  String routeCode;

  /// The name.
  String name;

  /// Inbound or Outbound.
  String direction;

  /// The name of the Origin StopPoint.
  String originationName;

  /// The name of the Destination StopPoint.
  String destinationName;

  /// The id (NaPTAN code) of the Origin StopPoint.
  String originator;

  /// The id (NaPTAN code) or the Destination StopPoint.
  String destination;

  /// Regular or Night.
  String serviceType;

  /// The DateTime that the Service containing this Route is valid until.
  DateTime validTo;

  /// The DateTime that the Service containing this Route is valid from.
  DateTime validFrom;

  MatchedRoute();

  @override
  String toString() {
    return 'MatchedRoute[routeCode=$routeCode, name=$name, direction=$direction, originationName=$originationName, destinationName=$destinationName, originator=$originator, destination=$destination, serviceType=$serviceType, validTo=$validTo, validFrom=$validFrom, ]';
  }

  MatchedRoute.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    routeCode = json['routeCode'];
    name = json['name'];
    direction = json['direction'];
    originationName = json['originationName'];
    destinationName = json['destinationName'];
    originator = json['originator'];
    destination = json['destination'];
    serviceType = json['serviceType'];
    validTo = json['validTo'] == null ? null : DateTime.parse(json['validTo']);
    validFrom =
        json['validFrom'] == null ? null : DateTime.parse(json['validFrom']);
  }

  Map<String, dynamic> toJson() {
    return {
      'routeCode': routeCode,
      'name': name,
      'direction': direction,
      'originationName': originationName,
      'destinationName': destinationName,
      'originator': originator,
      'destination': destination,
      'serviceType': serviceType,
      'validTo': validTo == null ? '' : validTo.toUtc().toIso8601String(),
      'validFrom': validFrom == null ? '' : validFrom.toUtc().toIso8601String()
    };
  }

  static List<MatchedRoute> listFromJson(List<dynamic> json) {
    return json == null
        ? List<MatchedRoute>()
        : json.map((value) => MatchedRoute.fromJson(value)).toList();
  }

  static Map<String, MatchedRoute> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, MatchedRoute>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MatchedRoute.fromJson(value));
    }
    return map;
  }
}
