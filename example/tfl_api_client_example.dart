import 'dart:io';

import 'package:tfl_api_client/tfl_api_client.dart';

Future<void> main() async {
  final appKey = Platform.environment['APP_KEY']!;

  final client = clientViaAppKey(appKey);

  final api = TflApiClient(client: client);

  final lines = await api.line.get(['metropolitan']);

  client.close();
}
