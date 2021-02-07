import 'package:tfl_api_client/src/extensions/response_extensions.dart';
import 'package:http/http.dart';

class ClientException implements Exception {
  final String? message;
  final Uri? uri;
  final int? statusCode;
  final String? reasonPhrase;

  ClientException({
    this.message,
    this.uri,
    this.statusCode,
    this.reasonPhrase,
  });

  ClientException.fromResponse(Response response)
      : message = response.body,
        uri = response.request?.url,
        statusCode = response.statusCode,
        reasonPhrase = response.reasonPhrase;

  @override
  String toString() =>
      message != null ? 'ClientException: $message' : 'ClientException';

  static Response checkIsSuccessStatusCode(Response response) {
    if (!response.isSuccessStatusCode) {
      throw ClientException.fromResponse(response);
    } else {
      return response;
    }
  }
}
