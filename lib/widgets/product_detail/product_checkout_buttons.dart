import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class ProductCheckout extends StatelessWidget {
  final Function addProduct;
  const ProductCheckout(this.addProduct, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 50,
          width: 300,
          child: ElevatedButton(
            onPressed: () {
              addProduct();
            },
            style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: ColorConstants.darkGreen),
            child: const Text(
              'Add To Cart',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 15),
            ),
          ),
        ),
        RawMaterialButton(
          onPressed: () {},
          elevation: 0,
          fillColor: ColorConstants.lightGrey,
          padding: const EdgeInsets.all(15.0),
          shape: const CircleBorder(),
          child: const Icon(
            Icons.shopping_cart,
          ),
        )
      ],
    );
  }
}
