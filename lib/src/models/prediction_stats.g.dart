// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PredictionStats _$PredictionStatsFromJson(Map<String, dynamic> json) {
  return PredictionStats(
    databaseName: json['databaseName'] as String?,
    collectionName: json['collectionName'] as String?,
    avgObjectSize: (json['avgObjectSize'] as num?)?.toDouble(),
    dataSize: json['dataSize'] as int?,
    indexSizes: (json['indexSizes'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as int),
    ),
    objectCounts: (json['objectCounts'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as int),
    ),
    objectCount: json['objectCount'] as int?,
    isOk: json['isOk'] as bool?,
    storageSize: json['storageSize'] as int?,
    totalIndexSize: json['totalIndexSize'] as int?,
    activeCount: json['activeCount'] as int?,
  );
}

Map<String, dynamic> _$PredictionStatsToJson(PredictionStats instance) =>
    <String, dynamic>{
      'databaseName': instance.databaseName,
      'collectionName': instance.collectionName,
      'avgObjectSize': instance.avgObjectSize,
      'dataSize': instance.dataSize,
      'indexSizes': instance.indexSizes,
      'objectCounts': instance.objectCounts,
      'objectCount': instance.objectCount,
      'isOk': instance.isOk,
      'storageSize': instance.storageSize,
      'totalIndexSize': instance.totalIndexSize,
      'activeCount': instance.activeCount,
    };
