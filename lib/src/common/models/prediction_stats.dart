class PredictionStats {
  String? databaseName;
  String? collectionName;
  double? avgObjectSize;
  int? dataSize;
  Map<String, int>? indexSizes;
  Map<String, int>? objectCounts;
  int? objectCount;
  bool? isOk;
  int? storageSize;
  int? totalIndexSize;
  int? activeCount;

  PredictionStats({
    this.databaseName,
    this.collectionName,
    this.avgObjectSize,
    this.dataSize,
    this.indexSizes,
    this.objectCounts,
    this.objectCount,
    this.isOk,
    this.storageSize,
    this.totalIndexSize,
    this.activeCount,
  });

  factory PredictionStats.fromJson(
    Map<String, dynamic> json,
  ) {
    return PredictionStats(
      databaseName: json['databaseName'] as String?,
      collectionName: json['collectionName'] as String?,
      avgObjectSize: (json['avgObjectSize'] as num?)?.toDouble(),
      dataSize: (json['dataSize'] as num?)?.toInt(),
      indexSizes: (json['indexSizes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
      objectCounts: (json['objectCounts'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
      objectCount: (json['objectCount'] as num?)?.toInt(),
      isOk: json['isOk'] as bool?,
      storageSize: (json['storageSize'] as num?)?.toInt(),
      totalIndexSize: (json['totalIndexSize'] as num?)?.toInt(),
      activeCount: (json['activeCount'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'databaseName': databaseName,
      'collectionName': collectionName,
      'avgObjectSize': avgObjectSize,
      'dataSize': dataSize,
      'indexSizes': indexSizes,
      'objectCounts': objectCounts,
      'objectCount': objectCount,
      'isOk': isOk,
      'storageSize': storageSize,
      'totalIndexSize': totalIndexSize,
      'activeCount': activeCount,
    };
  }
}
