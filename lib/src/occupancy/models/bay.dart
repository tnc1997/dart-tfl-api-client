class Bay {
  String? bayType;
  int? bayCount;
  int? free;
  int? occupied;

  Bay({
    this.bayType,
    this.bayCount,
    this.free,
    this.occupied,
  });

  factory Bay.fromJson(
    Map<String, dynamic> json,
  ) {
    return Bay(
      bayType: json['bayType'] as String?,
      bayCount: (json['bayCount'] as num?)?.toInt(),
      free: (json['free'] as num?)?.toInt(),
      occupied: (json['occupied'] as num?)?.toInt(),
    );
  }

  static List<Bay> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Bay.fromJson(value),
          )
          .toList();

  static Map<String, Bay> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Bay.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'bayType': bayType,
      'bayCount': bayCount,
      'free': free,
      'occupied': occupied,
    };
  }
}
