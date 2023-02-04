import 'package:flutter/material.dart';
import '../../utils/products_list.dart';

class ProductName extends StatelessWidget {
  final int index;
  const ProductName(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        productsList[index].name!,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    ]);
  }
}
