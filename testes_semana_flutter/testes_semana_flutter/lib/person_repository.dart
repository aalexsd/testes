import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:testes_semana_flutter/models/person.dart';

class PersonRepository {
  final http.Client client;

  PersonRepository(this.client);

  Future<List<Person>> getPerson() async {
    var url = 'https://65d62e68f6967ba8e3bda956.mockapi.io/tests';
    final response = await client.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonList = jsonDecode(response.body) as List;
      return jsonList.map((e) => Person.fromMap(e)).toList();
    } else {
      throw Exception('Erro na internet');
    }
  }
}
