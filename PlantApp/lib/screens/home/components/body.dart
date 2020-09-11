import 'package:PlantApp/screens/home/components/header_with_searchbox.dart';
import 'package:PlantApp/constants.dart';
import 'package:PlantApp/screens/home/components/title_with_morebtn.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';

import 'feature_plant_card.dart';
import 'recomend_plant_card.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TittleWithMoreBtn(
            titleOne: "Recommended",
            titleTwo: "More",
          ),
          RecomendPlants(size: size),
          TittleWithMoreBtn(
            titleOne: "Featured Plant",
            titleTwo: "More",
          ),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            image: "assets/images/bottom_img_1.png",
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_img_2.png",
          ),
        ],
      ),
    );
  }
}

class RecomendPlants extends StatelessWidget {
  const RecomendPlants({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            size: size,
            title: "SAMANTHA",
            country: "Russia",
            price: 400,
            image: ("assets/images/image_1.png"),
          ),
          RecomendPlantCard(
            size: size,
            title: "ANGELICA",
            country: "Russia",
            price: 400,
            image: ("assets/images/image_2.png"),
          ),
          RecomendPlantCard(
            size: size,
            title: "SAMANTHA",
            country: "Russia",
            price: 400,
            image: ("assets/images/image_3.png"),
          ),
        ],
      ),
    );
  }
}
