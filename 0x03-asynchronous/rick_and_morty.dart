import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  final url = "https://rickandmortyapi.com/api/character";
  try {
    final response = await http.get(Uri.parse(url));
    var userData = json.decode(response.body);
    var results = userData['results'];
    for (var result in results) {
      print('${result['name']}');
    }
  } catch (e) {
    print('error caught: $e');
  }
}
