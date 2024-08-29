// @Skip('Feature ainda não completa')

import 'package:test/test.dart';

void main() {
  test('isWorked', () {
    final name = "Alex";
    // expect(name, isA<String>());
    // expect(name, equals('Alex'));
    // expect(name, isNotNull);
    // expect(name, contains('lex'));

    expect(name,
        allOf([isA<String>(), equals('Alex'), isNotNull, contains('lex')]));
  });

  test('throw error', () {
    expect(() => int.parse('X'), throwsException);
  }, tags: 'web');
}
