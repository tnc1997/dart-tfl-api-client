import 'package:http/http.dart';

extension ResponseExtensions on Response {
  /// Returns true if the status code is success.
  bool get isSuccessStatusCode => statusCode >= 200 && statusCode < 300;
}
