import 'package:testes_semana_flutter/models/person.dart';
import 'package:testes_semana_flutter/models/person_equatable.dart';

void main(List<String> args) {
  final person = Person(id: 1,  name: 'Alex', age: 23, height: 1.80, weight: 90);
  print("IMC deve ser 27.78: ${person.imc == 27.78}");
  print(person.imc);
  // O teste abaixo é para mostrar o uso do equatable
  final PersonEquatable alex = PersonEquatable(name: 'Alex');
  print(alex == PersonEquatable(name: 'Alex'));
}
