import "package:flutter/material.dart";

import '../../../constants.dart';

class TittleWithMoreBtn extends StatelessWidget {
  const TittleWithMoreBtn({
    Key key, this.titleOne, this.titleTwo,
  }) : super(key: key);

  final String titleOne;
  final String titleTwo;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Container(
        height: 24,
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  child: Text(
                    titleOne,
                    style: Theme.of(context).textTheme.headline5.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
                Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      margin: EdgeInsets.only(right: kDefaultPadding / 4),
                      height: 7,
                      color: kPrimaryColor.withOpacity(0.2),
                    ))
              ],
            ),
            Spacer(),
            FlatButton(
              onPressed: () {},
              child: Text(
                titleTwo,
                style: TextStyle(color: Colors.white),
              ),
              color: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),
      ),
    );
  }
}
