import 'package:flutter/material.dart';
import 'package:shop_app/pages/cart.dart';
import 'package:shop_app/utils/colors.dart';
import '../widgets/home/home_bestseller.dart';
import '../widgets/home/home_brands.dart';
import '../widgets/home/home_slider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 15,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Search product...",
                    fillColor: ColorConstants.lightGrey),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.14,
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Cart()),
                  );
                },
                elevation: 0,
                fillColor: ColorConstants.lightGrey,
                padding: const EdgeInsets.all(15.0),
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.shopping_cart,
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(children: [
        SizedBox(
            height: (MediaQuery.of(context).size.height * 0.03 -
                MediaQuery.of(context).viewInsets.top)),
        SizedBox(
            height: (MediaQuery.of(context).size.height * 0.15 -
                MediaQuery.of(context).viewInsets.top),
            child: const Carousel()),
        SizedBox(
          height: (MediaQuery.of(context).size.height * 0.02 -
              MediaQuery.of(context).viewInsets.top),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const BrandsList(),
              SizedBox(
                height: (MediaQuery.of(context).size.height * 0.02 -
                    MediaQuery.of(context).viewInsets.top),
              ),
              SizedBox(
                  height: (MediaQuery.of(context).size.height * 0.555 -
                      MediaQuery.of(context).viewInsets.top),
                  child: const BestSeller()),
            ],
          ),
        )
      ]),
    );
  }
}
