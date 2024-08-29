import 'package:test/test.dart';
import 'package:testes_semana_flutter/models/person.dart';

void main() {
  final person = Person(id: 1, name: 'Alex', age: 23, height: 1.80, weight: 90);

  test("IMC deve ser 27.78", () {
    expect(person.imc, 27.78);
  });

  group("isAdult", () {
    test("Se a idade é maior que 18, isAdult deve ser true", () {
      expect(person.isAdult, true);
    });

    test("Se a idade é igual a 18, isAdult deve ser true", () {
      expect(person.isAdult, true);
    });
  });
}
