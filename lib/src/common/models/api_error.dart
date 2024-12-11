import 'package:json_annotation/json_annotation.dart';

part 'api_error.g.dart';

@JsonSerializable()
class ApiError {
  DateTime? timestampUtc;
  String? name;
  String? exceptionType;
  int? httpStatusCode;
  String? relativeUri;
  String? message;
  String? detailedMessage;

  ApiError({
    this.timestampUtc,
    this.name,
    this.exceptionType,
    this.httpStatusCode,
    this.relativeUri,
    this.message,
    this.detailedMessage,
  });

  factory ApiError.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ApiErrorFromJson(json);

  static List<ApiError> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ApiError.fromJson(value),
          )
          .toList();

  static Map<String, ApiError> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ApiError.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ApiErrorToJson(this);
}
