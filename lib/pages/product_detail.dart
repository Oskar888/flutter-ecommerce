import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/services/functions/addToCart.dart';
import '../pages/cart.dart';
import '../utils/colors.dart';
import '../widgets/product_detail/product_description.dart';
import '../widgets/product_detail/product_image.dart';
import '../widgets/product_detail/product_name.dart';
import '../widgets/product_detail/product_price.dart';
import '../services/providers/cart_provider.dart';

class ProductDetail extends StatefulWidget {
  final int index;
  const ProductDetail(this.index, {super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool isSSelected = false;
  bool isMSelected = false;
  bool isLSelected = false;
  bool isXLSelected = false;
  bool isXXLSelected = false;

  notifyParent() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<CartProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RawMaterialButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              elevation: 0,
              fillColor: ColorConstants.lightGrey,
              padding: const EdgeInsets.all(15.0),
              shape: const CircleBorder(),
              child: const Icon(
                Icons.arrow_back_ios_new,
              ),
            ),
            const Text(
              'Product Detail',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 0,
                  fillColor: ColorConstants.lightGrey,
                  padding: const EdgeInsets.all(15.0),
                  shape: const CircleBorder(),
                  child: const Icon(
                    Icons.share,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: ProductImage(widget.index),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            ProductName(widget.index),
            ProductPrice(widget.index),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(children: [
              const SizedBox(
                width: 50,
                child: Text(
                  'Size',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 50,
                child: RawMaterialButton(
                  onPressed: () => {
                    isSSelected = true,
                    isMSelected = false,
                    isLSelected = false,
                    isXLSelected = false,
                    isXXLSelected = false,
                    notifyParent(),
                  },
                  elevation: 2,
                  fillColor: isSSelected == true
                      ? ColorConstants.mediumGrey
                      : Colors.white,
                  padding: const EdgeInsets.all(10.0),
                  shape: const CircleBorder(),
                  child: const Text(
                    'S',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
                child: RawMaterialButton(
                  onPressed: () => {
                    isSSelected = false,
                    isMSelected = true,
                    isLSelected = false,
                    isXLSelected = false,
                    isXXLSelected = false,
                    notifyParent(),
                  },
                  elevation: 2,
                  fillColor: isMSelected == true
                      ? ColorConstants.mediumGrey
                      : Colors.white,
                  padding: const EdgeInsets.all(10.0),
                  shape: const CircleBorder(),
                  child: const Text(
                    'M',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
                child: RawMaterialButton(
                  onPressed: () => {
                    isSSelected = false,
                    isMSelected = false,
                    isLSelected = true,
                    isXLSelected = false,
                    isXXLSelected = false,
                    notifyParent(),
                  },
                  elevation: 2,
                  fillColor: isLSelected == true
                      ? ColorConstants.mediumGrey
                      : Colors.white,
                  padding: const EdgeInsets.all(10.0),
                  shape: const CircleBorder(),
                  child: const Text(
                    'L',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
                child: RawMaterialButton(
                  onPressed: () => {
                    isSSelected = false,
                    isMSelected = false,
                    isLSelected = false,
                    isXLSelected = true,
                    isXXLSelected = false,
                    notifyParent(),
                  },
                  elevation: 2,
                  fillColor: isXLSelected == true
                      ? ColorConstants.mediumGrey
                      : Colors.white,
                  padding: const EdgeInsets.all(10.0),
                  shape: const CircleBorder(),
                  child: const Text(
                    'XL',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
                child: RawMaterialButton(
                  onPressed: () => {
                    isSSelected = false,
                    isMSelected = false,
                    isLSelected = false,
                    isXLSelected = false,
                    isXXLSelected = true,
                    notifyParent(),
                  },
                  elevation: 2,
                  fillColor: isXXLSelected == true
                      ? ColorConstants.mediumGrey
                      : Colors.white,
                  padding: const EdgeInsets.all(10.0),
                  shape: const CircleBorder(),
                  child: const Text(
                    'XXL',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: ProductDescription(widget.index),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      addToCart(widget.index, context, isSSelected, isMSelected,
                          isLSelected, isXLSelected, isXXLSelected);
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
