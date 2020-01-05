// Copyright 2014, the Dart project authors. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
// * Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
// * Redistributions in binary form must reproduce the above
// copyright notice, this list of conditions and the following
// disclaimer in the documentation and/or other materials provided
// with the distribution.
// * Neither the name of Google Inc. nor the names of its
// contributors may be used to endorse or promote products derived
// from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import 'dart:async';

import 'package:http/http.dart';
import 'package:tfl_api_client/src/clients/delegating_client.dart';

class AppIdAppKeyClient extends DelegatingClient {
  final String _appId;

  final String _appKey;

  AppIdAppKeyClient(Client client, String appId, String appKey)
      : _appId = Uri.encodeQueryComponent(appId),
        _appKey = Uri.encodeQueryComponent(appKey),
        super(client);

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    if (request.url.queryParameters.containsKey('app_id')) {
      throw Exception(
        'Attempted to make an HTTP request which already has an "app_id" query parameter. Adding the "app_id" would override that existing value.',
      );
    }

    if (request.url.queryParameters.containsKey('app_key')) {
      throw Exception(
        'Attempted to make an HTTP request which already has an "app_key" query parameter. Adding the "app_key" would override that existing value.',
      );
    }

    String getCurrentQuery() {
      return '${request.url.query.isNotEmpty ? '${request.url.query}&' : ''}';
    }

    final query = '${getCurrentQuery()}app_id=$_appId&app_key=$_appKey';

    final url = request.url.replace(
      query: query,
    );

    final modifiedRequest = Request(request.method, url);
    modifiedRequest.headers.addAll(request.headers);

    return await inner.send(modifiedRequest);
  }
}

/// Obtains an HTTP [Client] which uses an [appId] and an [appKey].
///
/// Note that the returned client should *only* be used for making HTTP requests
/// to the TfL API. The parameters should not be disclosed to third parties.
///
/// The user is responsible for closing the returned HTTP [Client].
/// Closing the returned HTTP [Client] will also close the [inner] client.
Client clientViaAppIdAppKey(String appId, String appKey, {Client inner}) {
  return AppIdAppKeyClient(inner ?? Client(), appId, appKey);
}
