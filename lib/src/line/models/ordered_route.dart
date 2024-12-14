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

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'naptanIds': naptanIds,
      'serviceType': serviceType,
    };
  }
}
