// Alterando o timeout padrão do arquivo que é de 30 segundos
@Timeout(Duration(seconds: 60)) // Metadado de skip
@Skip("Feature não completa") // Metadado de skip

import 'package:test/test.dart';

void main(){
  test("isWorked", () {
    final name = "Alex";
    expect(name, isA<String>());
    expect(name, equals("Alex"));
    expect(name, isNotNull);
    expect(name, contains("lex"));

    // A linha abaixo corresponde a todas as linhas acima, temos um
    // array de matchers

    expect(name, allOf([isA<String>(), equals("Alex"), isNotNull, contains("lex")]));
  });

  // No teste abaixo, usamos o skip para ignorar o teste
  // E passamos um motivo para skipar aquele test
  test("isWorked 2", () {
    final name = "Alex";
    expect(name, contains('Al'));
  }, skip: 'Falta terminar os casos de teste');
}