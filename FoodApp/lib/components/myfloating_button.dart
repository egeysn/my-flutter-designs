import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({
    Key key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kPrimaryColor.withOpacity(.26),
      ),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
        child: SvgPicture.asset("assets/icons/plus.svg"),
      ),
    );
  }
}
