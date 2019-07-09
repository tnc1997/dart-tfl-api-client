class PredictionTiming {
  String countdownServerAdjustment;

  DateTime source;

  DateTime insert;

  DateTime read;

  DateTime sent;

  DateTime received;

  PredictionTiming();

  @override
  String toString() {
    return 'PredictionTiming[countdownServerAdjustment=$countdownServerAdjustment, source=$source, insert=$insert, read=$read, sent=$sent, received=$received, ]';
  }

  PredictionTiming.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    countdownServerAdjustment = json['countdownServerAdjustment'];
    source = json['source'] == null ? null : DateTime.parse(json['source']);
    insert = json['insert'] == null ? null : DateTime.parse(json['insert']);
    read = json['read'] == null ? null : DateTime.parse(json['read']);
    sent = json['sent'] == null ? null : DateTime.parse(json['sent']);
    received =
        json['received'] == null ? null : DateTime.parse(json['received']);
  }

  Map<String, dynamic> toJson() {
    return {
      'countdownServerAdjustment': countdownServerAdjustment,
      'source': source == null ? '' : source.toUtc().toIso8601String(),
      'insert': insert == null ? '' : insert.toUtc().toIso8601String(),
      'read': read == null ? '' : read.toUtc().toIso8601String(),
      'sent': sent == null ? '' : sent.toUtc().toIso8601String(),
      'received': received == null ? '' : received.toUtc().toIso8601String()
    };
  }

  static List<PredictionTiming> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PredictionTiming>()
        : json.map((value) => new PredictionTiming.fromJson(value)).toList();
  }

  static Map<String, PredictionTiming> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PredictionTiming>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PredictionTiming.fromJson(value));
    }
    return map;
  }
}
