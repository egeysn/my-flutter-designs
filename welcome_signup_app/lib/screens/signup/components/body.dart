import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_signup_app/screens/login/component/background.dart';
import 'package:welcome_signup_app/screens/login/component/body.dart';
import 'package:welcome_signup_app/screens/login/component/have_account_check.dart';
import 'package:welcome_signup_app/screens/login/component/rounded_input_field.dart';
import 'package:welcome_signup_app/screens/login/loginscreen.dart';
import 'package:welcome_signup_app/screens/welcome/components/body.dart';

import '../../../constant.dart';
import 'social_icon.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "SIGNUP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.04),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.3,
          ),
          SizedBox(height: size.height * 0.02),
          RoundedInputField(hintText: "Your Email", onChanged: (value) {}),
          RoundedPassword(onChanged: (value) {}),
          Login_signup_btn(
              text: "SIGN UP",
              color: kPrimaryColor,
              press: () {},
              textColor: Colors.white),
          HaveAccountCheck(
            login: false,
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
          OrDivider(),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
            
              children: [
                SocialIcon(
                  assetIcon: "assets/icons/facebook.svg",
                ),
                SocialIcon(
                  assetIcon: "assets/icons/twitter.svg",
                ),
                SocialIcon(
                  assetIcon: "assets/icons/google-plus.svg",
                ),
              ],
            )
        ],
      ),
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.04),
      width: size.width * 0.8,
      child: Row(
        children: [
          buildDriver(),
          Text(
            "OR",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
          buildDriver(),
        ],
      ),
    );
  }

  Expanded buildDriver() {
    return Expanded(
      child: Divider(
        color: Colors.black,
        height: 1.5,
      ),
    );
  }
}
