part of 'person_bloc.dart';

@immutable
sealed class PersonState {}

final class PersonListState extends PersonState {
  final List<Person> data;

  PersonListState({required this.data});
}

final class PersonInitial extends PersonState {}

final class PersonLoadingState extends PersonState {}

final class PersonErrorState extends PersonState {
  final dynamic error;

  PersonErrorState({required this.error});
}
