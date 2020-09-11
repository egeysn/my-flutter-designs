import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../products.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
    @required this.size,
    this.product,
    this.press,
  }) : super(key: key);

  final Size size;
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
                    child: Container(
              // width: size.width * (.45),
              //height: size.height * (.25),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(tag:"${product.id}",child: Image.asset(product.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              products[0].title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            " \$${product.price}",
            style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
