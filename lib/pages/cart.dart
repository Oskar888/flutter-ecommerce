import 'package:flutter/material.dart';
import '../widgets/cart/cart_list.dart';
import '../widgets/cart/cart_summary.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'My Cart',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: const CartList(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.33,
              child: const CartSummary()),
        ]),
      ),
    );
  }
}
