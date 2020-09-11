import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../products.dart';
import 'components/add_to_cart.dart';
import 'components/card_counter.dart';
import 'components/color_and_size.dart';
import 'components/counter_with_fav_btn.dart';
import 'components/product_title_and_image.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key, this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: product.color,
        appBar: buildAppBar(context, product),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height,
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: size.height * 0.15,
                          left: kDefaultPadding,
                          right: kDefaultPadding),
                      margin: EdgeInsets.only(top: size.height * 0.3),
                      height: 500,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          )),
                      child: Column(
                        children: [
                          ColorAndSize(product: product),
                          buildDecription(),
                          Row(
                            children: [
                              CardCounter(),
                              Spacer(),
                              CounterWithFavBtn()
                            ],
                          ),
                          SizedBox(height: 40,),
                          AddToCart(product: product)
                        ],
                      ),
                    ),
                    ProductTitleWithImage(product: product),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Padding buildDecription() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        product.description,
        style: TextStyle(height: 1.4),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context, Product product) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset("assets/icons/back.svg", color: Colors.white)),
      backgroundColor: product.color,
      actions: [
        IconButton(
          icon:
              SvgPicture.asset("assets/icons/search.svg", color: Colors.white),
          color: kTextColor,
          onPressed: () {},
        ),
        SizedBox(width: 10),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg", color: Colors.white),
          onPressed: () {},
        )
      ],
    );
  }
}

