import 'dart:io';

import 'package:tfl_api_client/tfl_api_client.dart';

Future<void> main() async {
  final client = clientViaAppKey(Platform.environment['APP_KEY']!);

  final api = TflApiClient(client: client);

  for (var line in await api.line.get(['victoria'])) {
    print(line);
  }

  client.close();
}
