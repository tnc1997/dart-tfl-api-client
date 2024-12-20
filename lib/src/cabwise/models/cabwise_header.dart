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
      publishDateTime: json['PublishDateTime'] == null
          ? null
          : DateTime.parse(json['PublishDateTime'] as String),
      identifier: json['Identifier'] as String?,
      displayTitle: json['DisplayTitle'] as String?,
      version: json['Version'] as String?,
      author: json['Author'] as String?,
      owner: json['Owner'] as String?,
      refreshRate: (json['RefreshRate'] as num?)?.toInt(),
      maxLatency: (json['Max_Latency'] as num?)?.toInt(),
      timeToError: (json['TimeToError'] as num?)?.toInt(),
      schedule: json['Schedule'] as String?,
      logo: json['Logo'] as String?,
      language: json['Language'] as String?,
      attribution: json['Attribution'] == null
          ? null
          : CabwiseAttribution.fromJson(
              json['Attribution'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'PublishDateTime': publishDateTime?.toIso8601String(),
      'Identifier': identifier,
      'DisplayTitle': displayTitle,
      'Version': version,
      'Author': author,
      'Owner': owner,
      'RefreshRate': refreshRate,
      'Max_Latency': maxLatency,
      'TimeToError': timeToError,
      'Schedule': schedule,
      'Logo': logo,
      'Language': language,
      'Attribution': attribution,
    };
  }
}
