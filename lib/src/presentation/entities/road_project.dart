import '../../internal/serializable.dart';

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

  @override
  Map<String, dynamic> toJson() {
    return {
      'projectId': projectId,
      'schemeName': schemeName,
      'projectName': projectName,
      'projectDescription': projectDescription,
      'projectPageUrl': projectPageUrl,
      'consultationPageUrl': consultationPageUrl,
      'consultationStartDate': consultationStartDate == null
          ? ''
          : consultationStartDate.toUtc().toIso8601String(),
      'consultationEndDate': consultationEndDate == null
          ? ''
          : consultationEndDate.toUtc().toIso8601String(),
      'constructionStartDate': constructionStartDate == null
          ? ''
          : constructionStartDate.toUtc().toIso8601String(),
      'constructionEndDate': constructionEndDate == null
          ? ''
          : constructionEndDate.toUtc().toIso8601String(),
      'boroughsBenefited': boroughsBenefited,
      'cycleSuperhighwayId': cycleSuperhighwayId,
      'phase': phase,
      'contactName': contactName,
      'contactEmail': contactEmail,
      'externalPageUrl': externalPageUrl,
      'projectSummaryPageUrl': projectSummaryPageUrl,
    };
  }

  @override
  String toString() {
    return 'RoadProject[projectId=$projectId, schemeName=$schemeName, projectName=$projectName, projectDescription=$projectDescription, projectPageUrl=$projectPageUrl, consultationPageUrl=$consultationPageUrl, consultationStartDate=$consultationStartDate, consultationEndDate=$consultationEndDate, constructionStartDate=$constructionStartDate, constructionEndDate=$constructionEndDate, boroughsBenefited=$boroughsBenefited, cycleSuperhighwayId=$cycleSuperhighwayId, phase=$phase, contactName=$contactName, contactEmail=$contactEmail, externalPageUrl=$externalPageUrl, projectSummaryPageUrl=$projectSummaryPageUrl, ]';
  }

  RoadProject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    projectId = json['projectId'];
    schemeName = json['schemeName'];
    projectName = json['projectName'];
    projectDescription = json['projectDescription'];
    projectPageUrl = json['projectPageUrl'];
    consultationPageUrl = json['consultationPageUrl'];
    consultationStartDate = json['consultationStartDate'] == null
        ? null
        : DateTime.parse(json['consultationStartDate']);
    consultationEndDate = json['consultationEndDate'] == null
        ? null
        : DateTime.parse(json['consultationEndDate']);
    constructionStartDate = json['constructionStartDate'] == null
        ? null
        : DateTime.parse(json['constructionStartDate']);
    constructionEndDate = json['constructionEndDate'] == null
        ? null
        : DateTime.parse(json['constructionEndDate']);
    boroughsBenefited = (json['boroughsBenefited'] as List)
        .map((item) => item as String)
        .toList();
    cycleSuperhighwayId = json['cycleSuperhighwayId'];
    phase = json['phase'];
    contactName = json['contactName'];
    contactEmail = json['contactEmail'];
    externalPageUrl = json['externalPageUrl'];
    projectSummaryPageUrl = json['projectSummaryPageUrl'];
  }

  static List<RoadProject> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<RoadProject>()
        : json.map((value) => RoadProject.fromJson(value)).toList();
  }

  static Map<String, RoadProject> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, RoadProject>()
        : json.map((key, value) => MapEntry(key, RoadProject.fromJson(value)));
  }
}
