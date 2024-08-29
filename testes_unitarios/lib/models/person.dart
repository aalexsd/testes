// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math' as math;

class Person {
  final String name;
  final int age;
  final double height;
  final double weight;
  Person({
    required this.name,
    required this.age,
    required this.height,
    required this.weight,
  });

  double get imc {
    var result = weight / math.pow(height, 2);
    result *= 100;
    return result.roundToDouble() / 100;
  }

  bool get isAdult {
    return age >= 18;
  }

    String get weightStatus {
    if (imc < 18.5) {
      return 'Abaixo do peso';
    } else if (imc >= 18.5 && imc < 24.9) {
      return 'Normal';
    } else if (imc >= 25 && imc < 29.9) {
      return 'Sobrepeso';
    } else {
      return 'Obeso';
    }
  }

}
