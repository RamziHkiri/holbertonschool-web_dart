import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    double total = 0;
    var str = await fetchUserData();
    var user = json.decode(str);
    var ord = await fetchUserOrders(user['id']);
    var orders = json.decode(ord);
    for (var order in orders) {
      var price = json.decode(await fetchProductPrice(order));
      total = total + price;
    }
    return total;
  } catch (e) {
    print('error caught: $e');
    return -1;
  }
}
