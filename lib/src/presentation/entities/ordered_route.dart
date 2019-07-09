class OrderedRoute {
  String name;

  List<String> naptanIds;

  String serviceType;

  OrderedRoute();

  @override
  String toString() {
    return 'OrderedRoute[name=$name, naptanIds=$naptanIds, serviceType=$serviceType, ]';
  }

  OrderedRoute.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    naptanIds =
        (json['naptanIds'] as List).map((item) => item as String).toList();
    serviceType = json['serviceType'];
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'naptanIds': naptanIds, 'serviceType': serviceType};
  }

  static List<OrderedRoute> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OrderedRoute>()
        : json.map((value) => OrderedRoute.fromJson(value)).toList();
  }

  static Map<String, OrderedRoute> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, OrderedRoute>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = OrderedRoute.fromJson(value));
    }
    return map;
  }
}
