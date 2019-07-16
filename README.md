# TfL API Client

A library for Dart developers.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

```dart
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
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][issue-tracker].

[issue-tracker]: https://github.com/tnc1997/dart-tfl-api-client/issues
