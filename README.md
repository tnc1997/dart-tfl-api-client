# Client for TfL API

A client for accessing the TfL API.

Please note that Client for TfL API is unofficial and not endorsed by TfL.

## Usage

A simple usage example:

```dart
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
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][issue-tracker].

[issue-tracker]: https://github.com/tnc1997/dart-tfl-api-client/issues
