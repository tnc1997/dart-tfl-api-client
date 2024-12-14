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

  Map<String, dynamic> toJson() {
    return {
      'mode': mode,
      'serviceType': serviceType,
    };
  }
}
