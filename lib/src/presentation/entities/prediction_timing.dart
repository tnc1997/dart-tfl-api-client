import '../../internal/serializable.dart';

class PredictionTiming implements Serializable {
  String countdownServerAdjustment;

  DateTime source;

  DateTime insert;

  DateTime read;

  DateTime sent;

  DateTime received;

  PredictionTiming({
    this.countdownServerAdjustment,
    this.source,
    this.insert,
    this.read,
    this.sent,
    this.received,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'countdownServerAdjustment': countdownServerAdjustment,
      'source': source == null ? '' : source.toUtc().toIso8601String(),
      'insert': insert == null ? '' : insert.toUtc().toIso8601String(),
      'read': read == null ? '' : read.toUtc().toIso8601String(),
      'sent': sent == null ? '' : sent.toUtc().toIso8601String(),
      'received': received == null ? '' : received.toUtc().toIso8601String(),
    };
  }

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

  static List<PredictionTiming> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<PredictionTiming>()
        : json.map((value) => PredictionTiming.fromJson(value)).toList();
  }

  static Map<String, PredictionTiming> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, PredictionTiming>()
        : json.map(
            (key, value) => MapEntry(key, PredictionTiming.fromJson(value)));
  }
}
