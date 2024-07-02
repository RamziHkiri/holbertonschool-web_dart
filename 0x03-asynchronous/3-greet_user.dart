import '3-util.dart';
import 'dart:convert';


Future<String> greetUser() async {
 try {
    var str = await fetchUserData();
    var user = json.decode(str);
    return'Hello ${user["username"]}' ;
  } catch (e) {
    return 'error caught: $e';
  }
}

loginUser() async {
 try {
  if (await checkCredentials()) {
    print('There is a user: true');
    return await greetUser();
  } else {
    print('There is a user: fasle');
    return 'Wrong credentials';
  }
} catch (e) {
    print('error caught: $e');
  }
}