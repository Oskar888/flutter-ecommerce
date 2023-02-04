import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/utils/products_list.dart';

class ProductDescription extends StatelessWidget {
  final int index;
  final _controller = ScrollController();

  ProductDescription(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              'Descriptions',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const Divider(
          color: Colors.black,
        ),
        FadingEdgeScrollView.fromSingleChildScrollView(
          gradientFractionOnStart: 0,
          gradientFractionOnEnd: 0.3,
          child: SingleChildScrollView(
            controller: _controller,
            child: Column(
              children: [
                Column(
                  children: [
                    Text(productsList[index].description!),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
