import 'dart:async';

import 'package:dotenv/dotenv.dart';
import 'package:http/io_client.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

Future main() async {
  load();

  final client = AppKeyAppIdClient(IOClient(), env['APP_KEY'], env['APP_ID']);

  final tflApi = TflApi(client);

  final line = await tflApi.lines.getById('victoria');

  print(line);

  client.close();
}
