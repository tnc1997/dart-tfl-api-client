import 'package:json_annotation/json_annotation.dart';

part 'prediction_stats.g.dart';

@JsonSerializable()
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
  ) =>
      _$PredictionStatsFromJson(json);

  static List<PredictionStats> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PredictionStats.fromJson(value),
          )
          .toList();

  static Map<String, PredictionStats> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PredictionStats.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PredictionStatsToJson(this);
}
