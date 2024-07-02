import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    String user = await fetchUserData();
    Map<String, dynamic> userData = jsonDecode(user);
    return 'Hello ${userData['username']}';
  } catch (err) {
    return 'error caught: $err';
  }
}

Future<String> loginUser() async {
  try {
    bool stateUser = await checkCredentials();
    print('There is a user: $stateUser');
    if (stateUser) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
