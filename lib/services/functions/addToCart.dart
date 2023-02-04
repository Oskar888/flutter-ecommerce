// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../models/product.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import '../../utils/products_list.dart';

void addToCart(index, BuildContext context, bool isSSelected, bool isMSelected,
    bool isLSelected, bool isXLSelected, bool isXXLSelected) {
  final addProduct = Product(
    id: index,
    size: isSSelected == true
        ? 'S'
        : isMSelected == true
            ? 'M'
            : isLSelected == true
                ? 'L'
                : isXLSelected == true
                    ? 'XL'
                    : isXXLSelected == true
                        ? 'XXL'
                        : null,
    price: productsList[index].price,
  );

  final cartProvider = Provider.of<CartProvider>(context, listen: false);
  cartProvider.addToCart(addProduct);
}
