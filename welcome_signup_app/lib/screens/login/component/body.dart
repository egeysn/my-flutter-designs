import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_signup_app/constant.dart';
import 'package:welcome_signup_app/screens/login/component/textfieldContainer.dart';
import 'package:welcome_signup_app/screens/signup/signup_screen.dart';
import 'package:welcome_signup_app/screens/welcome/components/body.dart';

import 'background.dart';
import 'have_account_check.dart';
import 'rounded_input_field.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
              child: Background(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.1),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.3,
            ),
            SizedBox(height: size.height * 0.1),
            RoundedInputField(hintText: "Your Email", onChanged: (value) {}),
            RoundedPassword(onChanged: (value) {}),
            Login_signup_btn(
                text: "LOGIN",
                color: kPrimaryColor,
                press: () {},
                textColor: Colors.white),
            HaveAccountCheck(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignupScreen();
                }));
              },
            ),
           
          ]),
        ),
      ),
    );
  }
}



class RoundedPassword extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPassword({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          fillColor: Colors.red,
          icon: Icon(Icons.lock, color: kPrimaryColor),
          hintText: "Password",
          border: InputBorder.none,
          suffixIcon: Icon(Icons.visibility, color: kPrimaryColor),
        ),
      ),
    );
  }
}
