import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/utils/colors.dart';
import '../../utils/products_list.dart';
import '../../services/providers/cart_provider.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return ListView.builder(
        shrinkWrap: true,
        itemCount: cartProvider.cartItems.length,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Row(children: [
              SizedBox(
                width: 100,
                height: 120,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        alignment: FractionalOffset.topCenter,
                        image: AssetImage(
                          productsList[cartProvider.cartItems[index].id!]
                              .image!,
                        ),
                      )),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              productsList[cartProvider.cartItems[index].id!]
                                  .name!,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(children: [
                          Text(
                            'Size: ${cartProvider.cartItems[index].size.toString()}',
                            style: TextStyle(
                                color: ColorConstants.darkGrey,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'USD \$${cartProvider.cartItems[index].price!.toString()}',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          );
        });
  }
}
