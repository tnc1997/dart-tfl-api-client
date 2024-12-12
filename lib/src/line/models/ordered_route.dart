class OrderedRoute {
  String? name;
  List<String>? naptanIds;
  String? serviceType;

  OrderedRoute({
    this.name,
    this.naptanIds,
    this.serviceType,
  });

  factory OrderedRoute.fromJson(
    Map<String, dynamic> json,
  ) {
    return OrderedRoute(
      name: json['name'] as String?,
      naptanIds: (json['naptanIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      serviceType: json['serviceType'] as String?,
    );
  }

  static List<OrderedRoute> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => OrderedRoute.fromJson(value),
          )
          .toList();

  static Map<String, OrderedRoute> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          OrderedRoute.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'naptanIds': naptanIds,
      'serviceType': serviceType,
    };
  }
}
