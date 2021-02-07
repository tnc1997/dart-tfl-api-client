import 'package:tfl_api_client/src/extensions/response_extensions.dart';
import 'package:http/http.dart';

class ClientException implements Exception {
  /// The message of the exception.
  final String message;

  /// The uri of the request if applicable.
  final Uri? uri;

  /// The status code of the response if applicable.
  final int? statusCode;

  /// The reason phrase of the response if applicable.
  final String? reasonPhrase;

  /// Constructs a [ClientException].
  ClientException({
    required this.message,
    this.uri,
    this.statusCode,
    this.reasonPhrase,
  });

  /// Constructs a [ClientException] from the [response].
  ClientException.fromResponse(Response response)
      : message = response.body,
        uri = response.request?.url,
        statusCode = response.statusCode,
        reasonPhrase = response.reasonPhrase;

  @override
  String toString() => 'ClientException: $message';

  /// Checks that the [response] has a success status code.
  ///
  /// Throws a [ClientException] if the [response] does not have a success status code.
  static Response checkIsSuccessStatusCode(Response response) {
    if (!response.isSuccessStatusCode) {
      throw ClientException.fromResponse(response);
    } else {
      return response;
    }
  }
}
