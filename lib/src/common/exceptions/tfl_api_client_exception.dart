import 'dart:convert';

import 'package:http/http.dart' as http;

class TflApiClientException implements Exception {
  /// The timestamp of the exception.
  DateTime? timestampUtc;

  /// The type of the exception.
  String? exceptionType;

  /// The HTTP status code of the response.
  int? httpStatusCode;

  /// The HTTP status of the response.
  String? httpStatus;

  /// The relative URI of the request.
  String? relativeUri;

  /// The message of the exception.
  String? message;

  /// Constructs a [TflApiClientException].
  TflApiClientException({
    this.timestampUtc,
    this.exceptionType,
    this.httpStatusCode,
    this.httpStatus,
    this.relativeUri,
    this.message,
  });

  /// Constructs a [TflApiClientException] from the [json].
  factory TflApiClientException.fromJson(
    Map<String, dynamic> json,
  ) {
    return TflApiClientException(
      timestampUtc: json['timestampUtc'] == null
          ? null
          : DateTime.parse(json['timestampUtc'] as String),
      exceptionType: json['exceptionType'] as String?,
      httpStatusCode: json['httpStatusCode'] as int?,
      httpStatus: json['httpStatus'] as String?,
      relativeUri: json['relativeUri'] as String?,
      message: json['message'] as String?,
    );
  }

  /// A JSON representation of this object.
  Map<String, dynamic> toJson() {
    return {
      'timestampUtc': timestampUtc?.toIso8601String(),
      'exceptionType': exceptionType,
      'httpStatusCode': httpStatusCode,
      'httpStatus': httpStatus,
      'relativeUri': relativeUri,
      'message': message,
    };
  }

  @override
  String toString() {
    if (message != null) {
      return 'TflApiClientException: $message';
    } else {
      return 'TflApiClientException';
    }
  }

  /// Checks that the [response] has a success status code.
  ///
  /// Throws a [TflApiClientException] if the [response] does not have a success status code.
  static http.Response checkIsSuccessStatusCode(
    http.Response response,
  ) {
    if (response.statusCode < 200 || response.statusCode >= 300) {
      if (response.body.isNotEmpty) {
        throw TflApiClientException.fromJson(json.decode(response.body));
      } else {
        throw TflApiClientException();
      }
    } else {
      return response;
    }
  }
}
