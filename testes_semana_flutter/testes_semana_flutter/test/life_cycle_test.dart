import 'package:test/test.dart';

void main() {
  setUpAll(() {
    print("Iniciando o teste");
  });

  tearDownAll(() {
    print("Destroi o teste");
  });

  test("isWorked", () {
    print("Executando o teste");
  });

  test("isWorked 2", () {
    print("Executando o teste 2");
  });
}
