import 'dart:convert';

import 'package:http/http.dart' as http;

class TflApiClientException implements Exception {
  /// The timestamp of the exception.
  DateTime? timestampUtc;

  /// The name of the exception.
  String? name;

  /// The type of the exception.
  String? exceptionType;

  /// The HTTP status code of the response.
  int? httpStatusCode;

  /// The relative URI of the request.
  String? relativeUri;

  /// The message of the exception.
  String? message;

  /// The detailed message of the exception.
  String? detailedMessage;

  /// Constructs a [TflApiClientException].
  TflApiClientException({
    this.timestampUtc,
    this.name,
    this.exceptionType,
    this.httpStatusCode,
    this.relativeUri,
    this.message,
    this.detailedMessage,
  });

  /// Constructs a [TflApiClientException] from the [json].
  factory TflApiClientException.fromJson(
    Map<String, dynamic> json,
  ) {
    return TflApiClientException(
      timestampUtc: json['timestampUtc'] == null
          ? null
          : DateTime.parse(json['timestampUtc'] as String),
      name: json['name'] as String?,
      exceptionType: json['exceptionType'] as String?,
      httpStatusCode: (json['httpStatusCode'] as num?)?.toInt(),
      relativeUri: json['relativeUri'] as String?,
      message: json['message'] as String?,
      detailedMessage: json['detailedMessage'] as String?,
    );
  }

  /// A JSON representation of this object.
  Map<String, dynamic> toJson() {
    return {
      'timestampUtc': timestampUtc?.toIso8601String(),
      'name': name,
      'exceptionType': exceptionType,
      'httpStatusCode': httpStatusCode,
      'relativeUri': relativeUri,
      'message': message,
      'detailedMessage': detailedMessage,
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
