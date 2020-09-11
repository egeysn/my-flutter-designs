import 'package:flutter/material.dart';

import '../../../constants.dart';


class CardCounter extends StatefulWidget {
  CardCounter({Key key}) : super(key: key);

  @override
  _CardCounterState createState() => _CardCounterState();
}

class _CardCounterState extends State<CardCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutLineButton(Icons.remove, () {
          setState(() {
            numOfItems -= 1;
          });
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(numOfItems.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.headline6),
        ),
        buildOutLineButton(Icons.add_outlined, () {
          setState(() {
            numOfItems += 1;
          });
        }),
      ],
    );
  }

  SizedBox buildOutLineButton(IconData icon, Function press) {
    return SizedBox(
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        onPressed: press,
        child: Icon(icon),
      ),
      width: 40,
      height: 32,
    );
  }
}