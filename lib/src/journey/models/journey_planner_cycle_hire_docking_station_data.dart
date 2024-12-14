class JourneyPlannerCycleHireDockingStationData {
  int? originNumberOfBikes;
  int? destinationNumberOfBikes;
  int? originNumberOfEmptySlots;
  int? destinationNumberOfEmptySlots;
  String? originId;
  String? destinationId;

  JourneyPlannerCycleHireDockingStationData({
    this.originNumberOfBikes,
    this.destinationNumberOfBikes,
    this.originNumberOfEmptySlots,
    this.destinationNumberOfEmptySlots,
    this.originId,
    this.destinationId,
  });

  factory JourneyPlannerCycleHireDockingStationData.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerCycleHireDockingStationData(
      originNumberOfBikes: (json['originNumberOfBikes'] as num?)?.toInt(),
      destinationNumberOfBikes:
          (json['destinationNumberOfBikes'] as num?)?.toInt(),
      originNumberOfEmptySlots:
          (json['originNumberOfEmptySlots'] as num?)?.toInt(),
      destinationNumberOfEmptySlots:
          (json['destinationNumberOfEmptySlots'] as num?)?.toInt(),
      originId: json['originId'] as String?,
      destinationId: json['destinationId'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'originNumberOfBikes': originNumberOfBikes,
      'destinationNumberOfBikes': destinationNumberOfBikes,
      'originNumberOfEmptySlots': originNumberOfEmptySlots,
      'destinationNumberOfEmptySlots': destinationNumberOfEmptySlots,
      'originId': originId,
      'destinationId': destinationId,
    };
  }
}
