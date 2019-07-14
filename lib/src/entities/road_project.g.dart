// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'road_project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoadProject _$RoadProjectFromJson(Map<String, dynamic> json) {
  return RoadProject(
      projectId: json['projectId'] as String,
      schemeName: json['schemeName'] as String,
      projectName: json['projectName'] as String,
      projectDescription: json['projectDescription'] as String,
      projectPageUrl: json['projectPageUrl'] as String,
      consultationPageUrl: json['consultationPageUrl'] as String,
      consultationStartDate: json['consultationStartDate'] == null
          ? null
          : DateTime.parse(json['consultationStartDate'] as String),
      consultationEndDate: json['consultationEndDate'] == null
          ? null
          : DateTime.parse(json['consultationEndDate'] as String),
      constructionStartDate: json['constructionStartDate'] == null
          ? null
          : DateTime.parse(json['constructionStartDate'] as String),
      constructionEndDate: json['constructionEndDate'] == null
          ? null
          : DateTime.parse(json['constructionEndDate'] as String),
      boroughsBenefited: (json['boroughsBenefited'] as List)
          ?.map((e) => e as String)
          ?.toList(),
      cycleSuperhighwayId: json['cycleSuperhighwayId'] as String,
      phase: json['phase'] as String,
      contactName: json['contactName'] as String,
      contactEmail: json['contactEmail'] as String,
      externalPageUrl: json['externalPageUrl'] as String,
      projectSummaryPageUrl: json['projectSummaryPageUrl'] as String);
}

Map<String, dynamic> _$RoadProjectToJson(RoadProject instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'schemeName': instance.schemeName,
      'projectName': instance.projectName,
      'projectDescription': instance.projectDescription,
      'projectPageUrl': instance.projectPageUrl,
      'consultationPageUrl': instance.consultationPageUrl,
      'consultationStartDate':
          instance.consultationStartDate?.toIso8601String(),
      'consultationEndDate': instance.consultationEndDate?.toIso8601String(),
      'constructionStartDate':
          instance.constructionStartDate?.toIso8601String(),
      'constructionEndDate': instance.constructionEndDate?.toIso8601String(),
      'boroughsBenefited': instance.boroughsBenefited,
      'cycleSuperhighwayId': instance.cycleSuperhighwayId,
      'phase': instance.phase,
      'contactName': instance.contactName,
      'contactEmail': instance.contactEmail,
      'externalPageUrl': instance.externalPageUrl,
      'projectSummaryPageUrl': instance.projectSummaryPageUrl
    };
