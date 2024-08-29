import 'package:test/test.dart';

void main() {
  // Inicia o teste, similar ao initState
  setUp(() {
    print("Inicia o teste");
  });

  // Destro o teste, similar ao dispose
  tearDown(() {
    print("Destrói o teste");
  });

  // Inicia todos os testes do arquivo
  setUpAll(() {
        print("Inicia o suit");
  });

    // Destroi todos os testes do arquivo
  tearDownAll(() {
        print("Destroi o suit");
  });


  test("isWorked", () {
    print("Executando");
  });

  test("isWorked 2", () {
    print("Executando 2");
  });
}
