import 'package:flutter/material.dart';
import '../../utils/products_list.dart';

class ProductPrice extends StatelessWidget {
  final int index;
  const ProductPrice(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        'USD \$${productsList[index].price.toString()}',
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    ]);
  }
}
