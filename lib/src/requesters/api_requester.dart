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
import 'dart:convert';
import 'dart:core';

import 'package:http/http.dart';

import '../errors/api_error.dart';
import '../interfaces/serializable.dart';

const _contentType = 'application/json; charset=utf-8';

const _userAgent = 'dart-api-client tfl/v1';

class ApiRequester {
  final Client _client;

  final String _rootUrl;

  ApiRequester(
    this._client,
    this._rootUrl,
  ) {
    assert(_rootUrl.endsWith('/'));
  }

  /// Converts a [name] and a [value] into a [MapEntry] for use in the query parameters of the [request] method.
  static MapEntry<String, String> toQueryParam(
    String name,
    dynamic value,
  ) {
    if (name == null || name.isEmpty) throw ArgumentError.notNull('name');
    if (value == null) throw ArgumentError.notNull('value');

    String toString(dynamic value) {
      if (value == null) {
        return '';
      } else if (value is DateTime) {
        return value.toIso8601String();
      } else {
        return '$value';
      }
    }

    return MapEntry(
      name,
      value is List ? value.map(toString).join(',') : toString(value),
    );
  }

  /// Sends an HTTP request to a [path] using a [method].
  Future request<T extends Serializable>(
    String path,
    String method, {
    T body,
    Map<String, String> queryParams,
  }) async {
    final streamedResponse = await _request(
      path,
      method,
      body: body,
      queryParams: queryParams,
    );

    final statusCode = streamedResponse.statusCode;

    final decodedResponse = await _decodeResponse(streamedResponse).first;

    if (statusCode < 200 || statusCode >= 400) {
      final message =
          decodedResponse is Map && decodedResponse.containsKey('message')
              ? decodedResponse['message']
              : 'An unknown error has occurred.';

      throw ApiError(statusCode, message);
    } else {
      return decodedResponse;
    }
  }

  Stream<Object> _decodeResponse(StreamedResponse response) {
    final contentType = response.headers['content-type']?.toLowerCase();

    if (contentType != null) {
      final charset = RegExp(r'charset=(.+)').firstMatch(contentType)?.group(1);

      if (contentType.contains('application/json')) {
        Converter<List<int>, String> converter;

        switch (charset) {
          case 'iso-8859-1':
            converter = Latin1Decoder(allowInvalid: true);
            break;
          case 'us-ascii':
            converter = AsciiDecoder(allowInvalid: true);
            break;
          case 'utf-8':
          default:
            converter = Utf8Decoder(allowMalformed: true);
            break;
        }

        return response.stream.transform(converter).transform(JsonDecoder());
      } else {
        throw ApiError(
          500,
          'Unable to decode the response using the content-type "$contentType".',
        );
      }
    } else {
      throw ApiError(
        500,
        'Unable to find the content-type of the response.',
      );
    }
  }

  Future<StreamedResponse> _request<T extends Serializable>(
    String path,
    String method, {
    T body,
    Map<String, String> queryParams,
  }) async {
    var url = path.startsWith('/')
        ? '$_rootUrl${path.substring(1)}'
        : '$_rootUrl$path';

    if (queryParams != null) {
      final query = queryParams.entries.map((entry) {
        return '${Uri.encodeQueryComponent(entry.key).replaceAll('+', '%20')}=${Uri.encodeQueryComponent(entry.value).replaceAll('+', '%20')}';
      }).join('&');

      url += '${url.contains('?') ? '&' : '?'}$query';
    }

    final headers = {
      'user-agent': _userAgent,
      'content-type': _contentType,
    };

    final request = Request(method, Uri.parse(url))..headers.addAll(headers);

    if (body != null) {
      request.body = json.encode(body);
    }

    return await _client.send(request);
  }
}
