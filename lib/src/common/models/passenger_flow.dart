class PassengerFlow {
  String? timeSlice;
  int? value;

  PassengerFlow({
    this.timeSlice,
    this.value,
  });

  factory PassengerFlow.fromJson(
    Map<String, dynamic> json,
  ) {
    return PassengerFlow(
      timeSlice: json['timeSlice'] as String?,
      value: (json['value'] as num?)?.toInt(),
    );
  }

  static List<PassengerFlow> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PassengerFlow.fromJson(value),
          )
          .toList();

  static Map<String, PassengerFlow> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PassengerFlow.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'timeSlice': timeSlice,
      'value': value,
    };
  }
}
