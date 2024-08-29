import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:testes_semana_flutter/bloc/person_bloc.dart';
import 'package:testes_semana_flutter/models/person.dart';
import 'package:testes_semana_flutter/person_repository.dart';

class PersonRepositoryMock extends Mock implements PersonRepository {}

void main() {
  final repository = PersonRepositoryMock();
  final bloc = PersonBloc(repository);
  final person = Person(id: 1, name: 'Alex', age: 23, height: 1.80, weight: 90);

  test("Should return a list of person", () {
    // when(() => clientMock.get(Uri.parse(url))).thenAnswer(
    //   (_) async => http.Response(jsonReturn, 200),
    // );

    when(
      () => repository.getPerson(),
    ).thenAnswer((_) async => <Person>[person, person]);

    bloc.add(PersonEvent.fetch);

    expectLater(bloc,
        emitsInOrder([isA<PersonLoadingState>(), isA<PersonListState>()]));
  });
}
