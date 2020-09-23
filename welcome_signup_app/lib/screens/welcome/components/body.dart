import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_signup_app/constant.dart';
import 'package:welcome_signup_app/screens/login/loginscreen.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WELCOME TO EDU",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.1),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.4,
            ),
            SizedBox(height: size.height * 0.1),
            Login_signup_btn(
              color: kPrimaryColor,
              text: "LOGIN",
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            Login_signup_btn(
              color: kPrimaryLightColor,
              text: "SIGN UP",
              textColor: Colors.black,
            ),
           
          ],
        ),
      ),
    );
  }
}


class Login_signup_btn extends StatelessWidget {
  const Login_signup_btn({
    Key key,
    this.color,
    this.press,
    this.text,
    this.textColor,
  }) : super(key: key);

  final Color color;
  final Color textColor;
  final Function press;
  final String text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      width: size.width * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          color: color,
          textColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(fontSize: 20.0, color: textColor),
          ),
        ),
      ),
    );
  }
}
