import 'package:testes_unitarios/models/person.dart';
import 'package:test/test.dart';


void main() {
  final person = Person(
    name: 'Alex Duarte',
    age: 23,
    height: 1.80,
    weight: 90,
  );

  group("IMC | ", (){
    test("O resultado DEVE ser 27,78", () {
    expect(person.imc, 27.78);
  });
    test("O resultado do IMC DEVE ser sobrepeso", (){
    expect(person.weightStatus, "Sobrepeso");
  });
  });



  test("Se a idade for maior ou igual a 18, isAdult DEVE ser true", () {
    expect(person.isAdult, true);
  });




}
