import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'road_project.g.dart';

@JsonSerializable()
class RoadProject implements Serializable {
  String projectId;

  String schemeName;

  String projectName;

  String projectDescription;

  String projectPageUrl;

  String consultationPageUrl;

  DateTime consultationStartDate;

  DateTime consultationEndDate;

  DateTime constructionStartDate;

  DateTime constructionEndDate;

  List<String> boroughsBenefited;

  String cycleSuperhighwayId;

  String phase;
  // enum phaseEnum {  Unscoped,  Concept,  ConsultationEnded,  Consultation,  Construction,  Complete,  };

  String contactName;

  String contactEmail;

  String externalPageUrl;

  String projectSummaryPageUrl;

  RoadProject({
    this.projectId,
    this.schemeName,
    this.projectName,
    this.projectDescription,
    this.projectPageUrl,
    this.consultationPageUrl,
    this.consultationStartDate,
    this.consultationEndDate,
    this.constructionStartDate,
    this.constructionEndDate,
    this.boroughsBenefited,
    this.cycleSuperhighwayId,
    this.phase,
    this.contactName,
    this.contactEmail,
    this.externalPageUrl,
    this.projectSummaryPageUrl,
  });

  factory RoadProject.fromJson(Map<String, dynamic> json) {
    return _$RoadProjectFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$RoadProjectToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
