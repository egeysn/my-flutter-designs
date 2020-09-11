
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/backward.svg"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Spacer(),
          IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,child: Column(
        children: [
          buildShapeImage(),
          buildTitleContainer(size, context),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 27),
                margin: EdgeInsets.all(5),
                width: 200,
                height: 75,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(.19),
                  borderRadius: BorderRadius.circular(27),
                ),
                child: Row(
                  children: [
                    Text(
                      "Add to bag",
                      style: Theme.of(context).textTheme.button,
                    ),
                    Spacer(),
                    IconButton(
                      icon: SvgPicture.asset("assets/icons/forward.svg"),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Spacer(),
              buildFloatingActionBar(context),
            ],
          )
        ],
      ),)
    );
  }

  Container buildShapeImage() {
    return Container(
      height: 305,
      width: 305,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: 6),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kSecondaryColor,
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image_1_big.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Container buildFloatingActionBar(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kPrimaryColor.withOpacity(.26),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kPrimaryColor,
            ),
            child: SvgPicture.asset("assets/icons/bag.svg"),
          ),
          Positioned(
            right: 15,
            bottom: 10,
            child: Container(
              alignment: Alignment.center,
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kWhiteColor,
              ),
              child: Text(
                "0",
                style: Theme.of(context)
                    .textTheme
                    .button
                    .copyWith(color: kPrimaryColor, fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildTitleContainer(Size size, BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
      width: double.infinity,
      child: Column(
        children: [
          Row(
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
              Spacer(),
              Text(
                "\$20",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: kPrimaryColor),
              ),
              SizedBox(width: 20),
            ],
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text(
                  "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.",
                  maxLines: 6,
                ),
              ),
            ),
          ),
        ],
      ),
    );
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
