import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:testes_workshop/models/album.dart';

Future<Album> fetchAlbum(http.Client client) async {
  var url = 'https://jsonplaceholder.typicode.com/albums/1';
  final response = await client.get(Uri.parse(url));
  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load Album');
  }
}
