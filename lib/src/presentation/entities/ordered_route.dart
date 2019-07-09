import '../../internal/serializable.dart';

class OrderedRoute implements Serializable {
  String name;

  List<String> naptanIds;

  String serviceType;

  OrderedRoute({
    this.name,
    this.naptanIds,
    this.serviceType,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'naptanIds': naptanIds,
      'serviceType': serviceType,
    };
  }

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

  static List<OrderedRoute> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<OrderedRoute>()
        : json.map((value) => OrderedRoute.fromJson(value)).toList();
  }

  static Map<String, OrderedRoute> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, OrderedRoute>()
        : json.map((key, value) => MapEntry(key, OrderedRoute.fromJson(value)));
  }
}
