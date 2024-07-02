import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async{
 var str = await fetchUserData();

  var Repr  = json.decode(str);

  return Repr["id"];
}
