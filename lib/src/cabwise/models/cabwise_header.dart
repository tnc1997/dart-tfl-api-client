import 'cabwise_attribution.dart';

class CabwiseHeader {
  DateTime? publishDateTime;
  String? identifier;
  String? displayTitle;
  String? version;
  String? author;
  String? owner;
  int? refreshRate;
  int? maxLatency;
  int? timeToError;
  String? schedule;
  String? logo;
  String? language;
  CabwiseAttribution? attribution;

  CabwiseHeader({
    this.publishDateTime,
    this.identifier,
    this.displayTitle,
    this.version,
    this.author,
    this.owner,
    this.refreshRate,
    this.maxLatency,
    this.timeToError,
    this.schedule,
    this.logo,
    this.language,
    this.attribution,
  });

  factory CabwiseHeader.fromJson(
    Map<String, dynamic> json,
  ) {
    return CabwiseHeader(
      publishDateTime: json['publishDateTime'] == null
          ? null
          : DateTime.parse(json['publishDateTime'] as String),
      identifier: json['identifier'] as String?,
      displayTitle: json['displayTitle'] as String?,
      version: json['version'] as String?,
      author: json['author'] as String?,
      owner: json['owner'] as String?,
      refreshRate: json['refreshRate'] as int?,
      maxLatency: json['maxLatency'] as int?,
      timeToError: json['timeToError'] as int?,
      schedule: json['schedule'] as String?,
      logo: json['logo'] as String?,
      language: json['language'] as String?,
      attribution: json['attribution'] == null
          ? null
          : CabwiseAttribution.fromJson(
              json['attribution'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'publishDateTime': publishDateTime?.toIso8601String(),
      'identifier': identifier,
      'displayTitle': displayTitle,
      'version': version,
      'author': author,
      'owner': owner,
      'refreshRate': refreshRate,
      'maxLatency': maxLatency,
      'timeToError': timeToError,
      'schedule': schedule,
      'logo': logo,
      'language': language,
      'attribution': attribution,
    };
  }
}
