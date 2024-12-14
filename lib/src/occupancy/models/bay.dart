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

  Map<String, dynamic> toJson() {
    return {
      'bayType': bayType,
      'bayCount': bayCount,
      'free': free,
      'occupied': occupied,
    };
  }
}
