import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/screens/details/details_screen.dart';

import '../../products.dart';
import 'components/components.dart';
import 'components/item_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding),
            child: Text("WOMEN",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold)),
          ),
          Categories(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) => ItemCard(
                size: size,
                product: products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        product: products[index],
                      ),
                    )),
              ),
            ),
          ))
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SvgPicture.asset("assets/icons/back.svg"),
      ),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg", color: kTextColor),
          color: kTextColor,
          onPressed: () {},
        ),
        SizedBox(width: 20),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg", color: kTextColor),
          onPressed: () {},
        )
      ],
    );
  }
}
