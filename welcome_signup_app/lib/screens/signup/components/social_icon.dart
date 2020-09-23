import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class SocialIcon extends StatelessWidget {
  final String assetIcon;
  final Function press;

  const SocialIcon({
    Key key,
    @required this.assetIcon,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
       
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: Colors.grey,
          ),
        ),
        child: SvgPicture.asset(assetIcon, height: 20, width: 20),
      ),
    );
  }
}
