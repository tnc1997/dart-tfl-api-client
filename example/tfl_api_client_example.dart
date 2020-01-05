import 'dart:async';

import 'package:dotenv/dotenv.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

Future main() async {
  load();

  final client = clientViaAppIdAppKey(env['APP_ID'], env['APP_KEY']);

  final tflApi = TflApi(client);

  final line = await tflApi.lines.getById('victoria');

  print(line);

  client.close();
}
