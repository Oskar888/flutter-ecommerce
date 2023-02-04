import 'package:flutter/material.dart';
import 'package:shop_app/pages/product_detail.dart';
import 'package:shop_app/utils/colors.dart';
import '../../utils/products_list.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Best Seller',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'See all',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.darkGreen),
                ))
          ],
        ),
        Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  mainAxisExtent: 300),
              shrinkWrap: true,
              itemCount: productsList.length,
              itemBuilder: (BuildContext ctx, index) {
                return GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductDetail(index))),
                  child: Container(
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        productsList[index].image!,
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
