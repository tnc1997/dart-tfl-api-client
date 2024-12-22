import 'dart:async';

import 'package:http/http.dart' as http;

class AppKeyClient extends http.BaseClient {
  final String _appKey;
  final http.Client _inner;

  AppKeyClient({
    required String appKey,
    http.Client? inner,
  })  : _appKey = Uri.encodeQueryComponent(appKey),
        _inner = inner ?? http.Client();

  @override
  void close() {
    _inner.close();
    super.close();
  }

  @override
  Future<http.StreamedResponse> send(
    http.BaseRequest request,
  ) {
    var url = request.url;
    if (url.queryParameters.containsKey('app_key')) {
      throw ArgumentError.value(
        request,
        'request',
        'Attempted to make an HTTP request which already has an "app_key" query parameter. Adding the "app_key" would override that existing value.',
      );
    }

    if (url.query.isEmpty) {
      url = url.replace(
        query: 'app_key=$_appKey',
      );
    } else {
      url = url.replace(
        query: '${url.query}&app_key=$_appKey',
      );
    }

    return _inner.send(
      http.Request(
        request.method,
        url,
      )..headers.addAll(request.headers),
    );
  }
}

/// Obtains an HTTP [Client] which uses an [appKey].
///
/// Note that the returned client should *only* be used for making HTTP requests
/// to the TfL API. The parameters should not be disclosed to third parties.
///
/// The user is responsible for closing the returned HTTP [Client].
/// Closing the returned HTTP [Client] will also close the [inner] client.
http.Client clientViaAppKey(
  String appKey, {
  http.Client? inner,
}) {
  return AppKeyClient(
    appKey: appKey,
    inner: inner,
  );
}
