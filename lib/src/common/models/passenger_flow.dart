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

  Map<String, dynamic> toJson() {
    return {
      'timeSlice': timeSlice,
      'value': value,
    };
  }
}
