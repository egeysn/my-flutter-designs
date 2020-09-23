import 'package:flutter/material.dart';
import 'package:welcome_signup_app/screens/login/component/textfieldContainer.dart';

import '../../../constant.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField({
    Key key,
    this.hintText,
    this.onChanged,
    this.icon = Icons.person,
  }) : super(key: key);

  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
          decoration: InputDecoration(
        icon: Icon(icon, color: kPrimaryColor),
        hintText: hintText,
        border: InputBorder.none,
      )),
    );
  }
}
