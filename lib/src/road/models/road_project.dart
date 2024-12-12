class RoadProject {
  String? projectId;
  String? schemeName;
  String? projectName;
  String? projectDescription;
  String? projectPageUrl;
  String? consultationPageUrl;
  DateTime? consultationStartDate;
  DateTime? consultationEndDate;
  DateTime? constructionStartDate;
  DateTime? constructionEndDate;
  List<String>? boroughsBenefited;
  String? cycleSuperhighwayId;
  String? phase;
  String? contactName;
  String? contactEmail;
  String? externalPageUrl;
  String? projectSummaryPageUrl;

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

  factory RoadProject.fromJson(
    Map<String, dynamic> json,
  ) {
    return RoadProject(
      projectId: json['projectId'] as String?,
      schemeName: json['schemeName'] as String?,
      projectName: json['projectName'] as String?,
      projectDescription: json['projectDescription'] as String?,
      projectPageUrl: json['projectPageUrl'] as String?,
      consultationPageUrl: json['consultationPageUrl'] as String?,
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
      boroughsBenefited: (json['boroughsBenefited'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      cycleSuperhighwayId: json['cycleSuperhighwayId'] as String?,
      phase: json['phase'] as String?,
      contactName: json['contactName'] as String?,
      contactEmail: json['contactEmail'] as String?,
      externalPageUrl: json['externalPageUrl'] as String?,
      projectSummaryPageUrl: json['projectSummaryPageUrl'] as String?,
    );
  }

  static List<RoadProject> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RoadProject.fromJson(value),
          )
          .toList();

  static Map<String, RoadProject> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RoadProject.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'projectId': projectId,
      'schemeName': schemeName,
      'projectName': projectName,
      'projectDescription': projectDescription,
      'projectPageUrl': projectPageUrl,
      'consultationPageUrl': consultationPageUrl,
      'consultationStartDate': consultationStartDate?.toIso8601String(),
      'consultationEndDate': consultationEndDate?.toIso8601String(),
      'constructionStartDate': constructionStartDate?.toIso8601String(),
      'constructionEndDate': constructionEndDate?.toIso8601String(),
      'boroughsBenefited': boroughsBenefited,
      'cycleSuperhighwayId': cycleSuperhighwayId,
      'phase': phase,
      'contactName': contactName,
      'contactEmail': contactEmail,
      'externalPageUrl': externalPageUrl,
      'projectSummaryPageUrl': projectSummaryPageUrl,
    };
  }
}
