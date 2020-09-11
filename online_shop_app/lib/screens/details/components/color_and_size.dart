import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../products.dart';
import 'color_dot.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Color",
                style: TextStyle(color: kTextColor),
              ),
              Row(children: [
                ColorDot(isSelected: true, color: Colors.blue),
                ColorDot(isSelected: false, color: Colors.yellow),
                ColorDot(isSelected: false, color: Colors.grey),
              ]),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text("Size"),
              Text(
                "${product.size}cm",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
  }
}
