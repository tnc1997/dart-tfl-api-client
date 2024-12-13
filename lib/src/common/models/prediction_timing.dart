class PredictionTiming {
  String? countdownServerAdjustment;
  DateTime? source;
  DateTime? insert;
  DateTime? read;
  DateTime? sent;
  DateTime? received;

  PredictionTiming({
    this.countdownServerAdjustment,
    this.source,
    this.insert,
    this.read,
    this.sent,
    this.received,
  });

  factory PredictionTiming.fromJson(
    Map<String, dynamic> json,
  ) {
    return PredictionTiming(
      countdownServerAdjustment: json['countdownServerAdjustment'] as String?,
      source: json['source'] == null
          ? null
          : DateTime.parse(json['source'] as String),
      insert: json['insert'] == null
          ? null
          : DateTime.parse(json['insert'] as String),
      read:
          json['read'] == null ? null : DateTime.parse(json['read'] as String),
      sent:
          json['sent'] == null ? null : DateTime.parse(json['sent'] as String),
      received: json['received'] == null
          ? null
          : DateTime.parse(json['received'] as String),
    );
  }

  static List<PredictionTiming> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PredictionTiming.fromJson(value),
          )
          .toList();

  static Map<String, PredictionTiming> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PredictionTiming.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'countdownServerAdjustment': countdownServerAdjustment,
      'source': source?.toIso8601String(),
      'insert': insert?.toIso8601String(),
      'read': read?.toIso8601String(),
      'sent': sent?.toIso8601String(),
      'received': received?.toIso8601String(),
    };
  }
}
