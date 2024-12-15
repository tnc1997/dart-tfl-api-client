class TaskPerformance {
  int? id;
  String? name;
  int? frequency;
  String? lastRunTime;
  String? averageRunTime;
  bool? scheduleActive;
  String? status;

  TaskPerformance({
    this.id,
    this.name,
    this.frequency,
    this.lastRunTime,
    this.averageRunTime,
    this.scheduleActive,
    this.status,
  });

  factory TaskPerformance.fromJson(
    Map<String, dynamic> json,
  ) {
    return TaskPerformance(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      frequency: (json['frequency'] as num?)?.toInt(),
      lastRunTime: json['lastRunTime'] as String?,
      averageRunTime: json['averageRunTime'] as String?,
      scheduleActive: json['scheduleActive'] as bool?,
      status: json['status'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'frequency': frequency,
      'lastRunTime': lastRunTime,
      'averageRunTime': averageRunTime,
      'scheduleActive': scheduleActive,
      'status': status,
    };
  }
}
