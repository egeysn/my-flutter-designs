import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key key,
    this.image,
  }) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                blurRadius: 22,
                offset: Offset(0, 10),
                color: kPrimaryColor.withOpacity(0.29)),
            BoxShadow(
                blurRadius: 20, offset: Offset(-15, -15), color: Colors.white),
          ]),
      child: SvgPicture.asset(image),
    );
  }
}
