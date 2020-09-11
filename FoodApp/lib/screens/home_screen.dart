import 'package:FoodApp/components/myfloating_button.dart';
import 'package:FoodApp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'details_screen.dart';
import 'components/food_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          buildTitleContainer(size, context),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryTitle(title: "All", active: true),
                CategoryTitle(title: "Italian", active: false),
                CategoryTitle(title: "Asian", active: false),
                CategoryTitle(title: "Chinese", active: false),
                CategoryTitle(title: "Burgers", active: false),
              ],
            ),
          ),
          SearchBar(),
          Expanded(child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCard(
                  image: "assets/images/image_1.png",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreen();
                      }),
                    );
                  },
                ),
                FoodCard(image: "assets/images/image_2.png", press: () {}),
                FoodCard(image: "assets/images/image_1_big.png", press: () {}),
              ],
            ),
          ),)
        ],
      ),
      floatingActionButton: MyFloatingActionButton(),
    );
  }

  Container buildTitleContainer(Size size, BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10, bottom: 10),
        height: size.height * 0.13,
        width: double.infinity,
        child: RichText(
          text:
              TextSpan(style: Theme.of(context).textTheme.headline5, children: [
            TextSpan(
              text: "Simple Way to find\n",
            ),
            TextSpan(text: "Tasty food"),
          ]),
        ));
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        )
      ],
    );
  }
}



class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      alignment: Alignment.center,
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: kBorderColor),
      ),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/search.svg"),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
    Key key,
    this.title,
    this.active = false,
  }) : super(key: key);

  final String title;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20, right: 30),
        child: Text(
          "$title",
          style: Theme.of(context).textTheme.button.copyWith(
              color: active ? kPrimaryColor : kTextColor.withOpacity(.4)),
        ));
  }
}
