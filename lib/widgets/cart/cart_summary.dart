import 'package:flutter/material.dart';
import 'package:shop_app/utils/colors.dart';
import 'package:provider/provider.dart';
import '../../services/providers/cart_provider.dart';

class CartSummary extends StatelessWidget {
  const CartSummary({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Column(
      children: [
        Row(
          children: const [
            Text(
              'Use Discount Code',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
              width: MediaQuery.of(context).size.width * 0.93,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.discount_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Code here",
                    fillColor: ColorConstants.lightGrey),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Subtotal',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'USD \$${cartProvider.cartSubTotal().toStringAsFixed(2)}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.005,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Fee Delivery',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'USD \$${cartProvider.cartFeeDelivery().toString()}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.005,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Discount',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'USD \$${cartProvider.cartDiscount().toStringAsFixed(2)}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.005,
        ),
        const Divider(
          color: Colors.black,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.005,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Total',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'USD \$${cartProvider.cartTotal().toStringAsFixed(2)}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        SizedBox(
          height: 50,
          width: 300,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: ColorConstants.darkGreen),
            child: const Text(
              'Check Out',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}
