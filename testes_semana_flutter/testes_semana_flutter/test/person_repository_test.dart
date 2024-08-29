import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:testes_semana_flutter/models/person.dart';
import 'package:testes_semana_flutter/person_repository.dart';

class ClientMock extends Mock implements http.Client {}

void main() {
  final clientMock = ClientMock();

  setUp(() {
    when(() => clientMock.get(Uri.parse(url))).thenAnswer(
      (_) async => http.Response(jsonReturn, 200),
    );
  });

  test('deve retornar uma lista de person', () async {
    final list = await PersonRepository(clientMock).getPerson();
    // expect(list, isA<Person>);
    expect(list, isA<List<Person>>());
    expect(list.isNotEmpty, equals(true));
    expect(list.first.name, equals('Amely'));
  });

  test('Should return exception when status code isnt 200', () async {
    when(() => clientMock.get(Uri.parse(url))).thenAnswer(
      (_) async => http.Response(jsonReturn, 404),
    );
    expect(() async => await PersonRepository(clientMock).getPerson(),
        throwsException);
  });
}

var url = 'https://65d62e68f6967ba8e3bda956.mockapi.io/tests';
const jsonReturn =
    '[{"name":"Amely","age":60,"height":85,"weight":83,"id":"1"}]';
