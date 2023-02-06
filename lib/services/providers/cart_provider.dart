import '../../services/models/product.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<Product> cartItems = [];

  cartSubTotal() {
    double subTotal = 0;
    for (int i = 0; i < cartItems.length; i++) {
      subTotal += cartItems[i].price!;
    }
    return subTotal;
  }

  cartFeeDelivery() {
    int feeAmount;
    feeAmount = cartItems.length * 5;
    return feeAmount;
  }

  cartDiscount() {
    return 0;
  }

  cartTotal() {
    double total;
    total = cartSubTotal() + cartFeeDelivery() - cartDiscount();
    return total;
  }

  void addToCart(Product product) {
    cartItems.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    cartItems.remove(product);
    notifyListeners();
  }
}
