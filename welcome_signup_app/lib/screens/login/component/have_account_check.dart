import 'package:flutter/material.dart';

import '../../../constant.dart';

class HaveAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;

  const HaveAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          login ? "Dont have an Account ? " : "Already have an Account?",
          style: TextStyle(color: kPrimaryColor),
        ),
        SizedBox(width: 7),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? " Sign Up" : "Sign In",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
