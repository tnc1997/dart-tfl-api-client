import 'dart:async';

import 'package:http/http.dart';

class AppKeyClient extends BaseClient {
  final String _appKey;
  final Client _inner;

  AppKeyClient({
    required String appKey,
    Client? inner,
  })  : _appKey = Uri.encodeQueryComponent(appKey),
        _inner = inner ?? Client();

  @override
  void close() {
    _inner.close();
    super.close();
  }

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    if (request.url.queryParameters.containsKey('app_key')) {
      throw Exception(
        'Attempted to make an HTTP request which already has an "app_key" query parameter. Adding the "app_key" would override that existing value.',
      );
    }

    String getCurrentQuery() {
      return '${request.url.query.isNotEmpty ? '${request.url.query}&' : ''}';
    }

    return _inner.send(
      Request(
        request.method,
        request.url.replace(
          query: '${getCurrentQuery()}app_key=$_appKey',
        ),
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
Client clientViaAppKey(String appKey, {Client? inner}) {
  return AppKeyClient(
    appKey: appKey,
    inner: inner,
  );
}
