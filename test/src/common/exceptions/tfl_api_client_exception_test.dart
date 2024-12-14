import 'package:http/http.dart' as http;
import 'package:test/test.dart';
import 'package:tfl_api_client/tfl_api_client.dart';

void main() {
  group(
    'TflApiClientException',
    () {
      group(
        'checkIsSuccessStatusCode',
        () {
          test(
            'should return the response if the response status code is greater than or equal to 200 and less than 300',
            () {
              // Arrange
              final response = http.Response('', 200);

              // Assert
              expect(
                TflApiClientException.checkIsSuccessStatusCode(response),
                equals(response),
              );
            },
          );

          test(
            'should throw a TflApiClientException if the response status code is greater than or equal to 300',
            () {
              // Arrange
              final response = http.Response('', 300);

              // Assert
              expect(
                () {
                  TflApiClientException.checkIsSuccessStatusCode(response);
                },
                throwsA(isA<TflApiClientException>()),
              );
            },
          );

          test(
            'should throw a TflApiClientException if the response status code is less than 200',
            () {
              // Arrange
              final response = http.Response('', 100);

              // Assert
              expect(
                () {
                  TflApiClientException.checkIsSuccessStatusCode(response);
                },
                throwsA(isA<TflApiClientException>()),
              );
            },
          );
        },
      );
    },
  );
}
