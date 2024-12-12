class ActiveServiceType {
  String? mode;
  String? serviceType;

  ActiveServiceType({
    this.mode,
    this.serviceType,
  });

  factory ActiveServiceType.fromJson(
    Map<String, dynamic> json,
  ) {
    return ActiveServiceType(
      mode: json['mode'] as String?,
      serviceType: json['serviceType'] as String?,
    );
  }

  static List<ActiveServiceType> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ActiveServiceType.fromJson(value),
          )
          .toList();

  static Map<String, ActiveServiceType> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ActiveServiceType.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'mode': mode,
      'serviceType': serviceType,
    };
  }
}
