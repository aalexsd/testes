import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart' as http;
import 'package:testes_workshop/models/album.dart';
import 'package:testes_workshop/services/album_repository.dart';

class ClientMock extends Mock implements http.Client {}

var url = 'https://jsonplaceholder.typicode.com/albums/1';
const jsonReturn = '{"userId": 1, "id": 1, "title": "quidem molestiae enim"}';

void main() {
  final clientMock = ClientMock();
  setUp(() {
    when(
      () => clientMock.get(Uri.parse(url)),
    ).thenAnswer((_) async => http.Response(jsonReturn, 200));
  });

  group('fetchAlbum', () {
    test('should return an Album when http client call is success', () async {
      final response = await fetchAlbum(clientMock);
      expect(response, isA<Album>());
      expect(response, Album(userId: 1, id: 1, title: "quidem molestiae enim"));
    });
  });
}
