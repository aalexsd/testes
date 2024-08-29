import 'package:test/test.dart';
import 'package:testes_semana_flutter/counter.dart';

void main() {
  // setUp(() {
  //   print('Iniciando os testes');
  // });

  // tearDown(() {
  //   print('Finalizando os testes');
  // });

  group('Contador', () {
    test("Initial value should be 0", () {
      final counter = Counter();

      print(counter.value);
      expect(Counter().value, allOf([equals(0)]));
    });

    test("value should be incremented", () {
      final counter = Counter();

      counter.increment();
      print(counter.value);

      expect(counter.value, equals(1));
    });

    test("value should be decremented", () {
      final counter = Counter();

      counter.decrement();
      print(counter.value);

      expect(counter.value, equals(-1));
    });
  });
}
