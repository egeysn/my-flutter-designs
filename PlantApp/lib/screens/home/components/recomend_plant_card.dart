import 'package:PlantApp/screens/home/details/details_screen.dart';
import "package:flutter/material.dart";

import '../../../constants.dart';

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key,
    @required this.size,
    this.title,
    this.country,
    this.price, this.image,
  }) : super(key: key);

  final Size size;
  final String title;
  final String country;
  final price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => { Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()))},
          child: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(top: 15, right: 15,bottom: 15),
        width: size.width * 0.4,
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
               boxShadow: [
                BoxShadow(
                    blurRadius: 50,
                    offset: Offset(0, 10),
                    color: kPrimaryColor.withOpacity(0.23))
              ]),
              child: Row(
                children: [
                  
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
