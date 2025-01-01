# Client for TfL API

A client for accessing the TfL API.

Please note that Client for TfL API is unofficial and not endorsed by TfL.

## Getting Started

1. Add this package to your application.

   ```shell
   dart pub add tfl_api_client
   ```

1. Create a variable to store your app key.

   ```dart
   final appKey = Platform.environment['APP_KEY'];
   ```

1. Obtain an HTTP client using your app key.

   ```dart
   final client = clientViaAppKey(appKey);
   ```

1. Create an API client using the HTTP client.

   ```dart
   final api = TflApiClient(client: client);
   ```
   
1. Fetch data from the TfL API using the API client.

   ```dart
   final lines = await api.line.get(['metropolitan']);
   ```
