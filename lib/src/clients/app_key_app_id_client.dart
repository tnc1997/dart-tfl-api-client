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

import 'delegating_client.dart';

class AppKeyAppIdClient extends DelegatingClient {
  final String _appKey;

  final String _appId;

  AppKeyAppIdClient(Client client, String appKey, String appId)
      : _appKey = Uri.encodeQueryComponent(appKey),
        _appId = Uri.encodeQueryComponent(appId),
        super(client);

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    if (request.url.queryParameters.containsKey('app_key')) {
      throw Exception(
        'Attempted to make an HTTP request which already has an "app_key" query parameter. Adding the "app_key" would override that existing value.',
      );
    }

    if (request.url.queryParameters.containsKey('app_id')) {
      throw Exception(
        'Attempted to make an HTTP request which already has an "app_id" query parameter. Adding the "app_id" would override that existing value.',
      );
    }

    String getCurrentQuery() {
      return '${request.url.query.isNotEmpty ? '${request.url.query}&' : ''}';
    }

    final query = '${getCurrentQuery()}app_key=$_appKey&app_id=$_appId';

    final url = request.url.replace(
      query: query,
    );

    final modifiedRequest = Request(request.method, url);
    modifiedRequest.headers.addAll(request.headers);

    return await inner.send(modifiedRequest);
  }
}
