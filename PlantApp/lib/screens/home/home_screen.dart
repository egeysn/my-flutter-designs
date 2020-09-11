import 'package:PlantApp/components/my_bottom_navbar.dart';
import 'package:PlantApp/constants.dart';
import 'package:PlantApp/screens/home/components/body.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
              icon: SvgPicture.asset("assets/icons/menu.svg"),
              onPressed: () {}),
        ),
        body: Body(),
        bottomNavigationBar: MyBottomNavBar()
        // bottomNavigationBar: BottomNavigationBar(),
        );
  }
}

