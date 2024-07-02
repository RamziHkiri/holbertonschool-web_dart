import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    var userData = await fetchUserData();
    var user = json.decode(userData);
    var userId = user['id'];

    var ordersData = await fetchUserOrders(userId);
    var orders = json.decode(ordersData);

    double totalPrice = 0.0;

    for (var product in orders) {
      var priceData = await fetchProductPrice(product);
      var price = json.decode(priceData);
      totalPrice += price;
    }

    return totalPrice;
  } catch (e) {
    return -1.0;
  }
}