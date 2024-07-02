import '2-util.dart';
import 'dart:convert';

Future<void> getUser() async {
  try {
    var str = await fetchUser();

    var user = json.decode(str);

    return user["id"];
  } catch (e) {
    print('error caught: $e');
  }
}
