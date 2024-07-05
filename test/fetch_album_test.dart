import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:siemens/mock_test_http.dart';
import 'package:mockito/annotations.dart';
import 'fetch_album_test.mocks.dart';

/**
 * @see
 * https://stackoverflow.com/questions/71831344/mockclient-1-positional-arguments-expected-but-0-found
 */
// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
@GenerateMocks([http.Client])
void main() {
  group('fetchAlbum', () {
    test('returns an Album if the http call completes successfully', () async {

      final client = MyMockClient();

      // Use Mockito to return a successful response when it calls the
      // provided http.Client.
      when(client
          .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')))
          .thenAnswer((_) async =>
          http.Response('{"userId": 1, "id": 2, "title": "mock"}', 200));

      expect(await fetchAlbum(client), isA<Album>());
    });

    test('throws an exception if the http call completes with an error', () {
      final client = MyMockClient();

      // Use Mockito to return an unsuccessful response when it calls the
      // provided http.Client.
      when(client
          .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      expect(fetchAlbum(client), throwsException);
    });
  });
}


/*
2

First make sure you added the annotation to generate the mock

import 'package:mockito/annotations.dart';
then @GenerateMocks([http.Client])

In the terminal: dart run build_runner build

import the generated file unit_test.mocks.dart--/fetch_album_test_mocks

There may be a conflict between your local unit_test.mocks.dart file and the MockClient class present in the package:http package.

Since both files have classes with the same name MockClient, Dart gets confused about which one to use.

Solution:

Rename your local MockClient class to a unique name, for example, MyMockClient. Update your code to use the newly named class (e.g., final MyMockClient client = MyMockClient();).

Hope it helps!
 */