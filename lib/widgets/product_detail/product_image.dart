import 'package:flutter/material.dart';
import '../../utils/products_list.dart';

class ProductImage extends StatelessWidget {
  final int index;
  const ProductImage(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              alignment: FractionalOffset.topCenter,
              image: AssetImage(
                productsList[index].image!,
              ),
            )),
      ),
    );
  }
}
