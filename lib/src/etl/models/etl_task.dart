class EtlTask {
  int? id;
  String? taskName;
  String? description;
  bool? enabled;
  bool? scheduleActive;
  int? frequency;
  DateTime? firstRun;
  DateTime? lastRun;
  int? lastRunStatus;
  DateTime? created;
  DateTime? modified;
  bool? isDeleted;
  bool? isPriority;

  EtlTask({
    this.id,
    this.taskName,
    this.description,
    this.enabled,
    this.scheduleActive,
    this.frequency,
    this.firstRun,
    this.lastRun,
    this.lastRunStatus,
    this.created,
    this.modified,
    this.isDeleted,
    this.isPriority,
  });

  factory EtlTask.fromJson(
    Map<String, dynamic> json,
  ) {
    return EtlTask(
      id: (json['id'] as num?)?.toInt(),
      taskName: json['taskName'] as String?,
      description: json['description'] as String?,
      enabled: json['enabled'] as bool?,
      scheduleActive: json['scheduleActive'] as bool?,
      frequency: (json['frequency'] as num?)?.toInt(),
      firstRun: json['firstRun'] == null
          ? null
          : DateTime.parse(json['firstRun'] as String),
      lastRun: json['lastRun'] == null
          ? null
          : DateTime.parse(json['lastRun'] as String),
      lastRunStatus: (json['lastRunStatus'] as num?)?.toInt(),
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
      isDeleted: json['isDeleted'] as bool?,
      isPriority: json['isPriority'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'taskName': taskName,
      'description': description,
      'enabled': enabled,
      'scheduleActive': scheduleActive,
      'frequency': frequency,
      'firstRun': firstRun?.toIso8601String(),
      'lastRun': lastRun?.toIso8601String(),
      'lastRunStatus': lastRunStatus,
      'created': created?.toIso8601String(),
      'modified': modified?.toIso8601String(),
      'isDeleted': isDeleted,
      'isPriority': isPriority,
    };
  }
}
