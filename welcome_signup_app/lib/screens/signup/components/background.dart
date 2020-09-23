import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key key,
    this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            right: 15,
            bottom: 0,
            child: Image.asset(
              "assets/images/login_bottom.png",
              width: size.width * 0.5,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
