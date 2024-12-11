import 'package:json_annotation/json_annotation.dart';

part 'road_project.g.dart';

@JsonSerializable()
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
  ) =>
      _$RoadProjectFromJson(json);

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

  Map<String, dynamic> toJson() => _$RoadProjectToJson(this);
}
