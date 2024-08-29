import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:testes_semana_flutter/models/person.dart';
import 'package:testes_semana_flutter/person_repository.dart';
part 'person_state.dart';

enum PersonEvent { clear, fetch }

class PersonBloc extends Bloc<PersonEvent, PersonState> {
  final PersonRepository repository;
  PersonBloc(this.repository) : super(PersonListState(data: [])) {}

  @override
  Stream<PersonState> mapEventToState(PersonEvent event) async* {
    if (event == PersonEvent.clear) {
      yield PersonListState(data: []);
    } else if (event == PersonEvent.fetch) {
      yield PersonLoadingState();
      try {
        final list = await repository.getPerson();
        yield PersonListState(data: list);
      } catch (e) {
        yield PersonErrorState(error: e);
      }
    }
  }
}
