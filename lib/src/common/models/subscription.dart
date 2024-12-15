class Subscription {
  String? id;
  String? connectionId;
  String? roomName;
  String? naptanId;
  String? lineId;
  String? source;
  DateTime? timestamp;
  DateTime? timeToLive;

  Subscription({
    this.id,
    this.connectionId,
    this.roomName,
    this.naptanId,
    this.lineId,
    this.source,
    this.timestamp,
    this.timeToLive,
  });

  factory Subscription.fromJson(
    Map<String, dynamic> json,
  ) {
    return Subscription(
      id: json['id'] as String?,
      connectionId: json['connectionId'] as String?,
      roomName: json['roomName'] as String?,
      naptanId: json['naptanId'] as String?,
      lineId: json['lineId'] as String?,
      source: json['source'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      timeToLive: json['timeToLive'] == null
          ? null
          : DateTime.parse(json['timeToLive'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'connectionId': connectionId,
      'roomName': roomName,
      'naptanId': naptanId,
      'lineId': lineId,
      'source': source,
      'timestamp': timestamp?.toIso8601String(),
      'timeToLive': timeToLive?.toIso8601String(),
    };
  }
}
