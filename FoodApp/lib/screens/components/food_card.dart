import 'package:flutter/material.dart';

import '../../constants.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key key, this.title, this.text, this.cal, this.image, this.press,
  }) : super(key: key);

  final String title;
  final String text;
  final String cal;
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
            child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 400,
        width: 260,
        child: Stack(
          //  alignment: Alignment.topLeft,
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: Colors.black.withOpacity(0.06),
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(0.15),
                ),
              ),
            ),
            Positioned(
              left: -50,
              top: 0,
              child: Container(
                height: 184,
                width: 276,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("$image"))),
              ),
            ),
            //Price
            Positioned(
              right: 20,
              top: 90,
              child: Text(
                "\$20",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: kPrimaryColor),
              ),
            ),
            Positioned(
              top: 201,
              left: 40,
              child: Container(
                width: 210,
                height: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Vegan salad bowl\n",
                              style: Theme.of(context).textTheme.headline6),
                          TextSpan(
                            text: "Widh red tomato!",
                            style: TextStyle(color: kTextColor.withOpacity(.4)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Contrary to popuper bellow.Lorem upsum is not simply random text.It has",
                      style: TextStyle(color: kTextColor.withOpacity(.7)),
                      maxLines: 3,
                    ),
                    SizedBox(height: 16),
                    Text("420cal"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
