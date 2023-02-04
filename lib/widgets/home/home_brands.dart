import 'package:flutter/material.dart';
import '../../utils/images/brands_images.dart';
import '../../utils/colors.dart';

class BrandsList extends StatelessWidget {
  const BrandsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Brands',
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
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: brandsList.length,
            itemBuilder: (context, index) {
              return CircleAvatar(
                radius: (30),
                backgroundColor: ColorConstants.lightGrey,
                child: ClipRect(
                    child: Image.asset(
                  brandsList[index],
                  width: 40,
                  height: 40,
                )),
              );
            },
          ),
        ),
      ],
    );
  }
}
